// Aqsis
// Copyright (C) 1997 - 2007, Paul C. Gregory
//
// Contact: pgregory@aqsis.org
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public
// License as published by the Free Software Foundation; either
// version 2 of the License, or (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

/** \file
 *
 * \brief RIB request handler implementation for aqsis.
 * \author Chris Foster [chris42f (at) g mail (d0t) com]
 */

#ifndef RIBREQUESTHANDLER_H_INCLUDED
#define RIBREQUESTHANDLER_H_INCLUDED

#include <aqsis/aqsis.h>

#include <aqsis/ribparser.h>
#include <aqsis/ri/ritypes.h>
#include <aqsis/riutil/tokendictionary.h>

namespace Aqsis
{

//------------------------------------------------------------------------------
class CqRibRequestHandler : public IqRibRequestHandler
{
	public:
		/// Construct a request handler.
		CqRibRequestHandler();

		virtual void handleRequest(const std::string& requestName,
				IqRibParser& parser);

	private:
		//@{
		/// Object ID -> handle maps
		typedef std::map<TqInt, RtObjectHandle> TqObjectMap;
		typedef std::map<std::string, RtObjectHandle> TqNamedObjectMap;
		//@}
		//@{
		/// Light ID -> handle maps
		typedef std::map<TqInt, RtLightHandle> TqLightMap;
		typedef std::map<std::string, RtLightHandle> TqNamedLightMap;
		//@}
		/// Request handler function type
		typedef void (CqRibRequestHandler::*TqRequestHandler)(IqRibParser& parser);
		/// Request -> handler mapping type
		typedef std::map<std::string, TqRequestHandler> TqHandlerMap;
		/// Function pointer compatible with Ri{Area}LightSourceV
		typedef RtLightHandle (*TqLightSourceVFunc)(RtToken shadername,
					RtInt count, RtToken tokens[], RtPointer values[]);


		//--------------------------------------------------
		/// Helpers for handler methods
		void handleLightSourceGeneral(TqLightSourceVFunc riLightSourceFunc,
				IqRibParser& parser);
		static RtBasis* getBasis(IqRibParser& parser);
		static void checkArrayLength(IqRibParser& parser,
				const char* arrayName, TqInt arrayLength,
				TqInt expectedLength, const char* expectedLengthDesc = 0);

		//--------------------------------------------------
		/// Autogenerated handler methods definitions
#		include "requesthandler_method_defs.inl"

		/// Handler methods with hand-written implementations
		void handleVersion(IqRibParser& parser);
		void handleDeclare(IqRibParser& parser);
		void handleDepthOfField(IqRibParser& parser);
		void handleColorSamples(IqRibParser& parser);
		void handleLightSource(IqRibParser& parser);
		void handleAreaLightSource(IqRibParser& parser);
		void handleIlluminate(IqRibParser& parser);
		void handleBasis(IqRibParser& parser);
		void handleSubdivisionMesh(IqRibParser& parser);
		void handleHyperboloid(IqRibParser& parser);
		void handleProcedural(IqRibParser& parser);
		void handleObjectBegin(IqRibParser& parser);
		void handleObjectInstance(IqRibParser& parser);
		void handleMotionBegin(IqRibParser& parser);


		//--------------------------------------------------
		// Instance data
		/// Request name -> handler mapping.
		TqHandlerMap m_requestHandlerMap;

		/// Number of color components
		TqInt m_numColorComps;
		/// Dictionary of declared tokens
		CqTokenDictionary m_tokenDict;

		/// Mapping from light numbers to handles
		TqLightMap m_lightMap;
		/// Mapping from light names to handles
		TqNamedLightMap m_namedLightMap;

		/// Mapping from object numbers to handles
		TqObjectMap m_objectMap;
		/// Mapping from object names to handles
		TqNamedObjectMap m_namedObjectMap;
};

} // namespace Aqsis

#endif // RIBREQUESTHANDLER_H_INCLUDED
