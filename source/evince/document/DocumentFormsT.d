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


module evince.document.DocumentFormsT;

public  import evince.document.FormField;
public  import evince.document.MappingList;
public  import evince.document.Page;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.Str;
public  import gobject.ObjectG;


/** */
public template DocumentFormsT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentForms* getDocumentFormsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentForms*)getStruct();
	}


	/** */
	public bool documentIsModified()
	{
		return ev_document_forms_document_is_modified(getDocumentFormsStruct()) != 0;
	}

	/** */
	public bool formFieldButtonGetState(FormField field)
	{
		return ev_document_forms_form_field_button_get_state(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct()) != 0;
	}

	/** */
	public void formFieldButtonSetState(FormField field, bool state)
	{
		ev_document_forms_form_field_button_set_state(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), state);
	}

	/** */
	public string formFieldChoiceGetItem(FormField field, int index)
	{
		auto retStr = ev_document_forms_form_field_choice_get_item(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), index);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public int formFieldChoiceGetNItems(FormField field)
	{
		return ev_document_forms_form_field_choice_get_n_items(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct());
	}

	/** */
	public string formFieldChoiceGetText(FormField field)
	{
		auto retStr = ev_document_forms_form_field_choice_get_text(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public bool formFieldChoiceIsItemSelected(FormField field, int index)
	{
		return ev_document_forms_form_field_choice_is_item_selected(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), index) != 0;
	}

	/** */
	public void formFieldChoiceSelectItem(FormField field, int index)
	{
		ev_document_forms_form_field_choice_select_item(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), index);
	}

	/** */
	public void formFieldChoiceSetText(FormField field, string text)
	{
		ev_document_forms_form_field_choice_set_text(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), Str.toStringz(text));
	}

	/** */
	public void formFieldChoiceToggleItem(FormField field, int index)
	{
		ev_document_forms_form_field_choice_toggle_item(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), index);
	}

	/** */
	public void formFieldChoiceUnselectAll(FormField field)
	{
		ev_document_forms_form_field_choice_unselect_all(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct());
	}

	/** */
	public string formFieldTextGetText(FormField field)
	{
		auto retStr = ev_document_forms_form_field_text_get_text(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public void formFieldTextSetText(FormField field, string text)
	{
		ev_document_forms_form_field_text_set_text(getDocumentFormsStruct(), (field is null) ? null : field.getFormFieldStruct(), Str.toStringz(text));
	}

	/** */
	public MappingList getFormFields(Page page)
	{
		auto __p = ev_document_forms_get_form_fields(getDocumentFormsStruct(), (page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MappingList)(cast(EvMappingList*) __p, true);
	}
}
