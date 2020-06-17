/*
 * This file is part of EvinceD.
 * EvinceD is based on GtkD.
 *
 * EvinceD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * EvinceD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with EvinceD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */


module evince.Version;

private import evince.document.c.types;


/** */
public struct Version
{
	/**
	 * Returns the major version of the Evince at runtime.
	 * Contrast this with EV_MAJOR_VERSION which represents
	 * the version of the Evince that the code was compiled
	 * with.
	 *
	 * Returns: the major version
	 *
	 */
	public static uint getMajorVersion() {
		return EV_MAJOR_VERSION;
	}

	/**
	 * Returns the micro version of the Evince at runtime.
	 * Contrast this with EV_MICRO_VERSION which represents
	 * the version of the Evince that the code was compiled
	 * with.
	 *
	 * Returns: the micro version
	 *
	 */
	public static uint getMicroVersion() {
		return EV_MICRO_VERSION;
	}

	/**
	 * Returns the minor version of the Evince at runtime.
	 * Contrast this with EV_MINOR_VERSION which represents
	 * the version of the Evince that the code was compiled
	 * with.
	 *
	 * Returns: the minor version
	 *
	 */
	public static uint getMinorVersion() {
		return EV_MINOR_VERSION;
	}
}
