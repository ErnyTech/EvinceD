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

// generated automatically - do not change
// find conversion definition on APILookup.txt


module evince.document.Annotation;

private import evince.document.Page;
private import evince.document.Rectangle;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import gdk.Color;
private import gdk.RGBA;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class Annotation : ObjectG
{
	/** the main Gtk struct */
	protected EvAnnotation* evAnnotation;

	/** Get the main Gtk struct */
	public EvAnnotation* getAnnotationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evAnnotation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evAnnotation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvAnnotation* evAnnotation, bool ownedRef = false)
	{
		this.evAnnotation = evAnnotation;
		super(cast(GObject*)evAnnotation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_annotation_get_type();
	}

	/**
	 * Compare @annot and @other.
	 *
	 * Params:
	 *     other = another #EvAnnotation
	 *
	 * Returns: %TRUE if @annot is equal to @other, %FALSE otherwise
	 */
	public bool equal(Annotation other)
	{
		return ev_annotation_equal(evAnnotation, (other is null) ? null : other.getAnnotationStruct()) != 0;
	}

	/** */
	public EvAnnotationType getAnnotationType()
	{
		return ev_annotation_get_annotation_type(evAnnotation);
	}

	/** */
	public void getArea(Rectangle area)
	{
		ev_annotation_get_area(evAnnotation, (area is null) ? null : area.getRectangleStruct());
	}

	/**
	 * Get the color of @annot.
	 *
	 * Deprecated: Use ev_annotation_get_rgba() instead.
	 *
	 * Params:
	 *     color = a #GdkColor to be filled with the Annotation color.
	 */
	public void getColor(out Color color)
	{
		GdkColor* outcolor = sliceNew!GdkColor();

		ev_annotation_get_color(evAnnotation, outcolor);

		color = ObjectG.getDObject!(Color)(outcolor, true);
	}

	/**
	 * Get the contents of @annot. The contents of
	 * @annot is the text that is displayed in the annotation, or an
	 * alternate description of the annotation's content for non-text annotations
	 *
	 * Returns: a string with the contents of the annotation or
	 *     %NULL if @annot has no contents.
	 */
	public string getContents()
	{
		return Str.toString(ev_annotation_get_contents(evAnnotation));
	}

	/**
	 * Get the last modification date of @annot.
	 *
	 * Returns: A string containing the last modification date.
	 */
	public string getModified()
	{
		return Str.toString(ev_annotation_get_modified(evAnnotation));
	}

	/**
	 * Get the name of @annot. The name of the annotation is a string
	 * that uniquely indenftifies @annot amongs all the annotations
	 * in the same page.
	 *
	 * Returns: the string with the annotation's name.
	 */
	public string getName()
	{
		return Str.toString(ev_annotation_get_name(evAnnotation));
	}

	/**
	 * Get the page where @annot appears.
	 *
	 * Returns: the #EvPage where @annot appears
	 */
	public Page getPage()
	{
		auto __p = ev_annotation_get_page(evAnnotation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Page)(cast(EvPage*) __p);
	}

	/**
	 * Get the index of the page where @annot appears. Note that the index
	 * is 0 based.
	 *
	 * Returns: the page index.
	 */
	public uint getPageIndex()
	{
		return ev_annotation_get_page_index(evAnnotation);
	}

	/**
	 * Gets the color of @annot.
	 *
	 * Params:
	 *     rgba = a #GdkRGBA to be filled with the annotation color
	 *
	 * Since: 3.6
	 */
	public void getRgba(out RGBA rgba)
	{
		GdkRGBA* outrgba = sliceNew!GdkRGBA();

		ev_annotation_get_rgba(evAnnotation, outrgba);

		rgba = ObjectG.getDObject!(RGBA)(outrgba, true);
	}

	/**
	 * Set the area of the annotation to @area.
	 *
	 * Params:
	 *     area = a #EvRectangle
	 *
	 * Returns: %TRUE if the area has been changed, %FALSE otherwise
	 *
	 * Since: 3.18
	 */
	public bool setArea(Rectangle area)
	{
		return ev_annotation_set_area(evAnnotation, (area is null) ? null : area.getRectangleStruct()) != 0;
	}

	/**
	 * Set the color of the annotation to @color. You can monitor
	 * changes to the annotation's color by connecting to
	 * notify::color signal on @annot.
	 *
	 * Deprecated: Use ev_annotation_set_rgba() instead.
	 *
	 * Params:
	 *     color = a #GdkColor
	 *
	 * Returns: %TRUE  when the color has been changed, %FALSE otherwise.
	 */
	public bool setColor(Color color)
	{
		return ev_annotation_set_color(evAnnotation, (color is null) ? null : color.getColorStruct()) != 0;
	}

	/**
	 * Set the contents of @annot. You can monitor
	 * changes in the annotation's  contents by connecting to
	 * notify::contents signal of @annot.
	 *
	 * Returns: %TRUE if the contents have been changed, %FALSE otherwise.
	 */
	public bool setContents(string contents)
	{
		return ev_annotation_set_contents(evAnnotation, Str.toStringz(contents)) != 0;
	}

	/**
	 * Set the last modification date of @annot to @modified. To
	 * set the last modification date using a #GTime, use
	 * ev_annotation_set_modified_from_time() instead. You can monitor
	 * changes to the last modification date by connecting to the
	 * notify::modified signal on @annot.
	 *
	 * Params:
	 *     modified = string with the last modification date.
	 *
	 * Returns: %TRUE if the last modification date has been updated, %FALSE otherwise.
	 */
	public bool setModified(string modified)
	{
		return ev_annotation_set_modified(evAnnotation, Str.toStringz(modified)) != 0;
	}

	/**
	 * Set the last modification date of @annot to @utime.  You can
	 * monitor changes to the last modification date by connecting to the
	 * notify::modified sinal on @annot.
	 * For the time-format used, see ev_document_misc_format_date().
	 *
	 * Params:
	 *     utime = a #GTime
	 *
	 * Returns: %TRUE if the last modified date has been updated, %FALSE otherwise.
	 */
	public bool setModifiedFromTime(GTime utime)
	{
		return ev_annotation_set_modified_from_time(evAnnotation, utime) != 0;
	}

	/**
	 * Set the name of @annot.
	 * You can monitor changes of the annotation name by connecting
	 * to the notify::name signal on @annot.
	 *
	 * Returns: %TRUE when the name has been changed, %FALSE otherwise.
	 */
	public bool setName(string name)
	{
		return ev_annotation_set_name(evAnnotation, Str.toStringz(name)) != 0;
	}

	/**
	 * Set the color of the annotation to @rgba.
	 *
	 * Params:
	 *     rgba = a #GdkRGBA
	 *
	 * Returns: %TRUE if the color has been changed, %FALSE otherwise
	 *
	 * Since: 3.6
	 */
	public bool setRgba(RGBA rgba)
	{
		return ev_annotation_set_rgba(evAnnotation, (rgba is null) ? null : rgba.getRGBAStruct()) != 0;
	}
}
