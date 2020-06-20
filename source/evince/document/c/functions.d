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


module evince.document.c.functions;

import std.stdio;
import evince.document.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_EVINCEDOCUMENT = ["libevdocument3-4.dll;evdocument3.dll;evdocument3.dll"];
else version (OSX)
	static immutable LIBRARY_EVINCEDOCUMENT = ["libevdocument3.4.dylib"];
else
	static immutable LIBRARY_EVINCEDOCUMENT = ["libevdocument3.so.4"];

shared static this()
{
	// evince.document.Annotation

	Linker.link(ev_annotation_get_type, "ev_annotation_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_equal, "ev_annotation_equal", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_annotation_type, "ev_annotation_get_annotation_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_area, "ev_annotation_get_area", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_color, "ev_annotation_get_color", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_contents, "ev_annotation_get_contents", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_modified, "ev_annotation_get_modified", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_name, "ev_annotation_get_name", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_page, "ev_annotation_get_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_page_index, "ev_annotation_get_page_index", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_get_rgba, "ev_annotation_get_rgba", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_area, "ev_annotation_set_area", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_color, "ev_annotation_set_color", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_contents, "ev_annotation_set_contents", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_modified, "ev_annotation_set_modified", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_modified_from_time, "ev_annotation_set_modified_from_time", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_name, "ev_annotation_set_name", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_set_rgba, "ev_annotation_set_rgba", LIBRARY_EVINCEDOCUMENT);

	// evince.document.AnnotationAttachment

	Linker.link(ev_annotation_attachment_get_type, "ev_annotation_attachment_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_attachment_new, "ev_annotation_attachment_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_attachment_get_attachment, "ev_annotation_attachment_get_attachment", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_attachment_set_attachment, "ev_annotation_attachment_set_attachment", LIBRARY_EVINCEDOCUMENT);

	// evince.document.AnnotationMarkup

	Linker.link(ev_annotation_markup_get_type, "ev_annotation_markup_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_can_have_popup, "ev_annotation_markup_can_have_popup", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_get_label, "ev_annotation_markup_get_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_get_opacity, "ev_annotation_markup_get_opacity", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_get_popup_is_open, "ev_annotation_markup_get_popup_is_open", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_get_rectangle, "ev_annotation_markup_get_rectangle", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_has_popup, "ev_annotation_markup_has_popup", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_set_has_popup, "ev_annotation_markup_set_has_popup", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_set_label, "ev_annotation_markup_set_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_set_opacity, "ev_annotation_markup_set_opacity", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_set_popup_is_open, "ev_annotation_markup_set_popup_is_open", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_markup_set_rectangle, "ev_annotation_markup_set_rectangle", LIBRARY_EVINCEDOCUMENT);

	// evince.document.AnnotationText

	Linker.link(ev_annotation_text_get_type, "ev_annotation_text_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_new, "ev_annotation_text_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_get_icon, "ev_annotation_text_get_icon", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_get_is_open, "ev_annotation_text_get_is_open", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_set_icon, "ev_annotation_text_set_icon", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_set_is_open, "ev_annotation_text_set_is_open", LIBRARY_EVINCEDOCUMENT);

	// evince.document.AnnotationTextMarkup

	Linker.link(ev_annotation_text_markup_get_type, "ev_annotation_text_markup_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_markup_highlight_new, "ev_annotation_text_markup_highlight_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_markup_squiggly_new, "ev_annotation_text_markup_squiggly_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_markup_strike_out_new, "ev_annotation_text_markup_strike_out_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_markup_underline_new, "ev_annotation_text_markup_underline_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_markup_get_markup_type, "ev_annotation_text_markup_get_markup_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_annotation_text_markup_set_markup_type, "ev_annotation_text_markup_set_markup_type", LIBRARY_EVINCEDOCUMENT);

	// evince.document.AsyncRenderer

	Linker.link(ev_async_renderer_get_type, "ev_async_renderer_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_async_renderer_render_pixbuf, "ev_async_renderer_render_pixbuf", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Attachment

	Linker.link(ev_attachment_get_type, "ev_attachment_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_new, "ev_attachment_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_error_quark, "ev_attachment_error_quark", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_get_creation_date, "ev_attachment_get_creation_date", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_get_description, "ev_attachment_get_description", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_get_mime_type, "ev_attachment_get_mime_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_get_modification_date, "ev_attachment_get_modification_date", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_get_name, "ev_attachment_get_name", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_open, "ev_attachment_open", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_attachment_save, "ev_attachment_save", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Document

	Linker.link(ev_document_get_type, "ev_document_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_doc_mutex_lock, "ev_document_doc_mutex_lock", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_doc_mutex_trylock, "ev_document_doc_mutex_trylock", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_doc_mutex_unlock, "ev_document_doc_mutex_unlock", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_factory_add_filters, "ev_document_factory_add_filters", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_factory_get_document, "ev_document_factory_get_document", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_factory_get_document_for_gfile, "ev_document_factory_get_document_for_gfile", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_factory_get_document_for_stream, "ev_document_factory_get_document_for_stream", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_factory_get_document_full, "ev_document_factory_get_document_full", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fc_mutex_lock, "ev_document_fc_mutex_lock", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fc_mutex_trylock, "ev_document_fc_mutex_trylock", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fc_mutex_unlock, "ev_document_fc_mutex_unlock", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_doc_mutex, "ev_document_get_doc_mutex", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_fc_mutex, "ev_document_get_fc_mutex", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_format_date, "ev_document_misc_format_date", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_get_loading_thumbnail, "ev_document_misc_get_loading_thumbnail", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_get_page_border_size, "ev_document_misc_get_page_border_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_get_pointer_position, "ev_document_misc_get_pointer_position", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_get_screen_dpi, "ev_document_misc_get_screen_dpi", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_get_thumbnail_frame, "ev_document_misc_get_thumbnail_frame", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_get_widget_dpi, "ev_document_misc_get_widget_dpi", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_invert_pixbuf, "ev_document_misc_invert_pixbuf", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_invert_surface, "ev_document_misc_invert_surface", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_paint_one_page, "ev_document_misc_paint_one_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_pixbuf_from_surface, "ev_document_misc_pixbuf_from_surface", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_render_loading_thumbnail, "ev_document_misc_render_loading_thumbnail", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_render_loading_thumbnail_surface, "ev_document_misc_render_loading_thumbnail_surface", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_render_thumbnail_surface_with_frame, "ev_document_misc_render_thumbnail_surface_with_frame", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_render_thumbnail_with_frame, "ev_document_misc_render_thumbnail_with_frame", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_surface_from_pixbuf, "ev_document_misc_surface_from_pixbuf", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_misc_surface_rotate_and_scale, "ev_document_misc_surface_rotate_and_scale", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_check_dimensions, "ev_document_check_dimensions", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_find_page_by_label, "ev_document_find_page_by_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_backend_info, "ev_document_get_backend_info", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_info, "ev_document_get_info", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_max_label_len, "ev_document_get_max_label_len", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_max_page_size, "ev_document_get_max_page_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_min_page_size, "ev_document_get_min_page_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_modified, "ev_document_get_modified", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_n_pages, "ev_document_get_n_pages", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_page, "ev_document_get_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_page_label, "ev_document_get_page_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_page_size, "ev_document_get_page_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_size, "ev_document_get_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_thumbnail, "ev_document_get_thumbnail", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_thumbnail_surface, "ev_document_get_thumbnail_surface", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_title, "ev_document_get_title", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_get_uri, "ev_document_get_uri", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_has_synctex, "ev_document_has_synctex", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_has_text_page_labels, "ev_document_has_text_page_labels", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_is_page_size_uniform, "ev_document_is_page_size_uniform", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_load, "ev_document_load", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_load_full, "ev_document_load_full", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_load_gfile, "ev_document_load_gfile", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_load_stream, "ev_document_load_stream", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_render, "ev_document_render", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_save, "ev_document_save", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_set_modified, "ev_document_set_modified", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_synctex_backward_search, "ev_document_synctex_backward_search", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_synctex_forward_search, "ev_document_synctex_forward_search", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentAnnotations

	Linker.link(ev_document_annotations_get_type, "ev_document_annotations_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_add_annotation, "ev_document_annotations_add_annotation", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_can_add_annotation, "ev_document_annotations_can_add_annotation", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_can_remove_annotation, "ev_document_annotations_can_remove_annotation", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_document_is_modified, "ev_document_annotations_document_is_modified", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_get_annotations, "ev_document_annotations_get_annotations", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_remove_annotation, "ev_document_annotations_remove_annotation", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_annotations_save_annotation, "ev_document_annotations_save_annotation", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentAttachments

	Linker.link(ev_document_attachments_get_type, "ev_document_attachments_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_attachments_get_attachments, "ev_document_attachments_get_attachments", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_attachments_has_attachments, "ev_document_attachments_has_attachments", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentFind

	Linker.link(ev_document_find_get_type, "ev_document_find_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_find_find_text, "ev_document_find_find_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_find_find_text_with_options, "ev_document_find_find_text_with_options", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_find_get_supported_options, "ev_document_find_get_supported_options", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentFonts

	Linker.link(ev_document_fonts_get_type, "ev_document_fonts_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fonts_fill_model, "ev_document_fonts_fill_model", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fonts_get_fonts_summary, "ev_document_fonts_get_fonts_summary", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fonts_get_progress, "ev_document_fonts_get_progress", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_fonts_scan, "ev_document_fonts_scan", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentForms

	Linker.link(ev_document_forms_get_type, "ev_document_forms_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_document_is_modified, "ev_document_forms_document_is_modified", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_button_get_state, "ev_document_forms_form_field_button_get_state", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_button_set_state, "ev_document_forms_form_field_button_set_state", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_get_item, "ev_document_forms_form_field_choice_get_item", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_get_n_items, "ev_document_forms_form_field_choice_get_n_items", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_get_text, "ev_document_forms_form_field_choice_get_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_is_item_selected, "ev_document_forms_form_field_choice_is_item_selected", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_select_item, "ev_document_forms_form_field_choice_select_item", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_set_text, "ev_document_forms_form_field_choice_set_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_toggle_item, "ev_document_forms_form_field_choice_toggle_item", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_choice_unselect_all, "ev_document_forms_form_field_choice_unselect_all", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_text_get_text, "ev_document_forms_form_field_text_get_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_form_field_text_set_text, "ev_document_forms_form_field_text_set_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_forms_get_form_fields, "ev_document_forms_get_form_fields", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentImages

	Linker.link(ev_document_images_get_type, "ev_document_images_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_images_get_image, "ev_document_images_get_image", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_images_get_image_mapping, "ev_document_images_get_image_mapping", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentInfo

	Linker.link(ev_document_info_get_type, "ev_document_info_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_info_copy, "ev_document_info_copy", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_info_free, "ev_document_info_free", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentLayers

	Linker.link(ev_document_layers_get_type, "ev_document_layers_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_layers_get_layers, "ev_document_layers_get_layers", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_layers_has_layers, "ev_document_layers_has_layers", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_layers_hide_layer, "ev_document_layers_hide_layer", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_layers_layer_is_visible, "ev_document_layers_layer_is_visible", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_layers_show_layer, "ev_document_layers_show_layer", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentLicense

	Linker.link(ev_document_license_get_type, "ev_document_license_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_license_new, "ev_document_license_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_license_copy, "ev_document_license_copy", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_license_free, "ev_document_license_free", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_license_get_text, "ev_document_license_get_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_license_get_uri, "ev_document_license_get_uri", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_license_get_web_statement, "ev_document_license_get_web_statement", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentLinks

	Linker.link(ev_document_links_get_type, "ev_document_links_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_find_link_dest, "ev_document_links_find_link_dest", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_find_link_page, "ev_document_links_find_link_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_get_dest_page, "ev_document_links_get_dest_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_get_dest_page_label, "ev_document_links_get_dest_page_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_get_link_page, "ev_document_links_get_link_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_get_link_page_label, "ev_document_links_get_link_page_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_get_links, "ev_document_links_get_links", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_get_links_model, "ev_document_links_get_links_model", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_links_has_document_links, "ev_document_links_has_document_links", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentMedia

	Linker.link(ev_document_media_get_type, "ev_document_media_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_media_get_media_mapping, "ev_document_media_get_media_mapping", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentPrint

	Linker.link(ev_document_print_get_type, "ev_document_print_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_print_print_page, "ev_document_print_print_page", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentSecurity

	Linker.link(ev_document_security_get_type, "ev_document_security_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_security_has_document_security, "ev_document_security_has_document_security", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_security_set_password, "ev_document_security_set_password", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentText

	Linker.link(ev_document_text_get_type, "ev_document_text_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_text_get_text, "ev_document_text_get_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_text_get_text_attrs, "ev_document_text_get_text_attrs", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_text_get_text_layout, "ev_document_text_get_text_layout", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_text_get_text_mapping, "ev_document_text_get_text_mapping", LIBRARY_EVINCEDOCUMENT);

	// evince.document.DocumentTransition

	Linker.link(ev_document_transition_get_type, "ev_document_transition_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_transition_get_effect, "ev_document_transition_get_effect", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_document_transition_get_page_duration, "ev_document_transition_get_page_duration", LIBRARY_EVINCEDOCUMENT);

	// evince.document.FileExporter

	Linker.link(ev_file_exporter_get_type, "ev_file_exporter_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_exporter_begin, "ev_file_exporter_begin", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_exporter_begin_page, "ev_file_exporter_begin_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_exporter_do_page, "ev_file_exporter_do_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_exporter_end, "ev_file_exporter_end", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_exporter_end_page, "ev_file_exporter_end_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_exporter_get_capabilities, "ev_file_exporter_get_capabilities", LIBRARY_EVINCEDOCUMENT);

	// evince.document.FormField

	Linker.link(ev_form_field_get_type, "ev_form_field_get_type", LIBRARY_EVINCEDOCUMENT);

	// evince.document.FormFieldButton

	Linker.link(ev_form_field_button_get_type, "ev_form_field_button_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_form_field_button_new, "ev_form_field_button_new", LIBRARY_EVINCEDOCUMENT);

	// evince.document.FormFieldChoice

	Linker.link(ev_form_field_choice_get_type, "ev_form_field_choice_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_form_field_choice_new, "ev_form_field_choice_new", LIBRARY_EVINCEDOCUMENT);

	// evince.document.FormFieldSignature

	Linker.link(ev_form_field_signature_get_type, "ev_form_field_signature_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_form_field_signature_new, "ev_form_field_signature_new", LIBRARY_EVINCEDOCUMENT);

	// evince.document.FormFieldText

	Linker.link(ev_form_field_text_get_type, "ev_form_field_text_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_form_field_text_new, "ev_form_field_text_new", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Image

	Linker.link(ev_image_get_type, "ev_image_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_new, "ev_image_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_new_from_pixbuf, "ev_image_new_from_pixbuf", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_get_id, "ev_image_get_id", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_get_page, "ev_image_get_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_get_pixbuf, "ev_image_get_pixbuf", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_get_tmp_uri, "ev_image_get_tmp_uri", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_image_save_tmp, "ev_image_save_tmp", LIBRARY_EVINCEDOCUMENT);

	// evince.document.EvinceLayer

	Linker.link(ev_layer_get_type, "ev_layer_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_layer_new, "ev_layer_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_layer_get_rb_group, "ev_layer_get_rb_group", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_layer_is_parent, "ev_layer_is_parent", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Link

	Linker.link(ev_link_get_type, "ev_link_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_new, "ev_link_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_get_action, "ev_link_get_action", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_get_title, "ev_link_get_title", LIBRARY_EVINCEDOCUMENT);

	// evince.document.LinkAction

	Linker.link(ev_link_action_get_type, "ev_link_action_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_new_dest, "ev_link_action_new_dest", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_new_external_uri, "ev_link_action_new_external_uri", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_new_launch, "ev_link_action_new_launch", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_new_layers_state, "ev_link_action_new_layers_state", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_new_named, "ev_link_action_new_named", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_new_remote, "ev_link_action_new_remote", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_equal, "ev_link_action_equal", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_action_type, "ev_link_action_get_action_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_dest, "ev_link_action_get_dest", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_filename, "ev_link_action_get_filename", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_hide_list, "ev_link_action_get_hide_list", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_name, "ev_link_action_get_name", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_params, "ev_link_action_get_params", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_show_list, "ev_link_action_get_show_list", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_toggle_list, "ev_link_action_get_toggle_list", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_action_get_uri, "ev_link_action_get_uri", LIBRARY_EVINCEDOCUMENT);

	// evince.document.LinkDest

	Linker.link(ev_link_dest_get_type, "ev_link_dest_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_fit, "ev_link_dest_new_fit", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_fith, "ev_link_dest_new_fith", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_fitr, "ev_link_dest_new_fitr", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_fitv, "ev_link_dest_new_fitv", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_named, "ev_link_dest_new_named", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_page, "ev_link_dest_new_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_page_label, "ev_link_dest_new_page_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_new_xyz, "ev_link_dest_new_xyz", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_equal, "ev_link_dest_equal", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_bottom, "ev_link_dest_get_bottom", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_dest_type, "ev_link_dest_get_dest_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_left, "ev_link_dest_get_left", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_named_dest, "ev_link_dest_get_named_dest", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_page, "ev_link_dest_get_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_page_label, "ev_link_dest_get_page_label", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_right, "ev_link_dest_get_right", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_top, "ev_link_dest_get_top", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_link_dest_get_zoom, "ev_link_dest_get_zoom", LIBRARY_EVINCEDOCUMENT);

	// evince.document.MappingList

	Linker.link(ev_mapping_list_get_type, "ev_mapping_list_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_new, "ev_mapping_list_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_find, "ev_mapping_list_find", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_find_custom, "ev_mapping_list_find_custom", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_get, "ev_mapping_list_get", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_get_data, "ev_mapping_list_get_data", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_get_list, "ev_mapping_list_get_list", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_get_page, "ev_mapping_list_get_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_length, "ev_mapping_list_length", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_nth, "ev_mapping_list_nth", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_ref, "ev_mapping_list_ref", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_remove, "ev_mapping_list_remove", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mapping_list_unref, "ev_mapping_list_unref", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Media

	Linker.link(ev_media_get_type, "ev_media_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_media_new_for_uri, "ev_media_new_for_uri", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_media_get_page_index, "ev_media_get_page_index", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_media_get_show_controls, "ev_media_get_show_controls", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_media_get_uri, "ev_media_get_uri", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_media_set_show_controls, "ev_media_set_show_controls", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Page

	Linker.link(ev_page_get_type, "ev_page_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_page_new, "ev_page_new", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Rectangle

	Linker.link(ev_rectangle_get_type, "ev_rectangle_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_rectangle_new, "ev_rectangle_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_rectangle_copy, "ev_rectangle_copy", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_rectangle_free, "ev_rectangle_free", LIBRARY_EVINCEDOCUMENT);

	// evince.document.RenderContext

	Linker.link(ev_render_context_get_type, "ev_render_context_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_new, "ev_render_context_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_compute_scaled_size, "ev_render_context_compute_scaled_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_compute_scales, "ev_render_context_compute_scales", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_compute_transformed_size, "ev_render_context_compute_transformed_size", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_set_page, "ev_render_context_set_page", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_set_rotation, "ev_render_context_set_rotation", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_set_scale, "ev_render_context_set_scale", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_render_context_set_target_size, "ev_render_context_set_target_size", LIBRARY_EVINCEDOCUMENT);

	// evince.document.Selection

	Linker.link(ev_selection_get_type, "ev_selection_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_selection_get_selected_text, "ev_selection_get_selected_text", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_selection_get_selection_region, "ev_selection_get_selection_region", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_selection_render_selection, "ev_selection_render_selection", LIBRARY_EVINCEDOCUMENT);

	// evince.document.SourceLink

	Linker.link(ev_source_link_get_type, "ev_source_link_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_source_link_new, "ev_source_link_new", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_source_link_copy, "ev_source_link_copy", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_source_link_free, "ev_source_link_free", LIBRARY_EVINCEDOCUMENT);

	// evince.document.TransitionEffect

	Linker.link(ev_transition_effect_get_type, "ev_transition_effect_get_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_transition_effect_new, "ev_transition_effect_new", LIBRARY_EVINCEDOCUMENT);

	// evince.document.EvinceDocument

	Linker.link(ev_backends_manager_get_all_types_info, "ev_backends_manager_get_all_types_info", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_backends_manager_get_document, "ev_backends_manager_get_document", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_backends_manager_get_document_module_name, "ev_backends_manager_get_document_module_name", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_backends_manager_get_document_type_info, "ev_backends_manager_get_document_type_info", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_compress, "ev_file_compress", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_copy_metadata, "ev_file_copy_metadata", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_get_mime_type, "ev_file_get_mime_type", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_is_temp, "ev_file_is_temp", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_file_uncompress, "ev_file_uncompress", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mkdtemp, "ev_mkdtemp", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mkstemp, "ev_mkstemp", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_mkstemp_file, "ev_mkstemp_file", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_get_locale_dir, "ev_get_locale_dir", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_init, "ev_init", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_rect_cmp, "ev_rect_cmp", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_shutdown, "ev_shutdown", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_tmp_file_unlink, "ev_tmp_file_unlink", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_tmp_filename_unlink, "ev_tmp_filename_unlink", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_tmp_uri_unlink, "ev_tmp_uri_unlink", LIBRARY_EVINCEDOCUMENT);
	Linker.link(ev_xfer_uri_simple, "ev_xfer_uri_simple", LIBRARY_EVINCEDOCUMENT);
}

__gshared extern(C)
{

	// evince.document.Annotation

	GType function() c_ev_annotation_get_type;
	int function(EvAnnotation* annot, EvAnnotation* other) c_ev_annotation_equal;
	EvAnnotationType function(EvAnnotation* annot) c_ev_annotation_get_annotation_type;
	void function(EvAnnotation* annot, EvRectangle* area) c_ev_annotation_get_area;
	void function(EvAnnotation* annot, GdkColor* color) c_ev_annotation_get_color;
	const(char)* function(EvAnnotation* annot) c_ev_annotation_get_contents;
	const(char)* function(EvAnnotation* annot) c_ev_annotation_get_modified;
	const(char)* function(EvAnnotation* annot) c_ev_annotation_get_name;
	EvPage* function(EvAnnotation* annot) c_ev_annotation_get_page;
	uint function(EvAnnotation* annot) c_ev_annotation_get_page_index;
	void function(EvAnnotation* annot, GdkRGBA* rgba) c_ev_annotation_get_rgba;
	int function(EvAnnotation* annot, EvRectangle* area) c_ev_annotation_set_area;
	int function(EvAnnotation* annot, GdkColor* color) c_ev_annotation_set_color;
	int function(EvAnnotation* annot, const(char)* contents) c_ev_annotation_set_contents;
	int function(EvAnnotation* annot, const(char)* modified) c_ev_annotation_set_modified;
	int function(EvAnnotation* annot, GTime utime) c_ev_annotation_set_modified_from_time;
	int function(EvAnnotation* annot, const(char)* name) c_ev_annotation_set_name;
	int function(EvAnnotation* annot, GdkRGBA* rgba) c_ev_annotation_set_rgba;

	// evince.document.AnnotationAttachment

	GType function() c_ev_annotation_attachment_get_type;
	EvAnnotation* function(EvPage* page, EvAttachment* attachment) c_ev_annotation_attachment_new;
	EvAttachment* function(EvAnnotationAttachment* annot) c_ev_annotation_attachment_get_attachment;
	int function(EvAnnotationAttachment* annot, EvAttachment* attachment) c_ev_annotation_attachment_set_attachment;

	// evince.document.AnnotationMarkup

	GType function() c_ev_annotation_markup_get_type;
	int function(EvAnnotationMarkup* markup) c_ev_annotation_markup_can_have_popup;
	const(char)* function(EvAnnotationMarkup* markup) c_ev_annotation_markup_get_label;
	double function(EvAnnotationMarkup* markup) c_ev_annotation_markup_get_opacity;
	int function(EvAnnotationMarkup* markup) c_ev_annotation_markup_get_popup_is_open;
	void function(EvAnnotationMarkup* markup, EvRectangle* evRect) c_ev_annotation_markup_get_rectangle;
	int function(EvAnnotationMarkup* markup) c_ev_annotation_markup_has_popup;
	int function(EvAnnotationMarkup* markup, int hasPopup) c_ev_annotation_markup_set_has_popup;
	int function(EvAnnotationMarkup* markup, const(char)* label) c_ev_annotation_markup_set_label;
	int function(EvAnnotationMarkup* markup, double opacity) c_ev_annotation_markup_set_opacity;
	int function(EvAnnotationMarkup* markup, int isOpen) c_ev_annotation_markup_set_popup_is_open;
	int function(EvAnnotationMarkup* markup, EvRectangle* evRect) c_ev_annotation_markup_set_rectangle;

	// evince.document.AnnotationText

	GType function() c_ev_annotation_text_get_type;
	EvAnnotation* function(EvPage* page) c_ev_annotation_text_new;
	EvAnnotationTextIcon function(EvAnnotationText* text) c_ev_annotation_text_get_icon;
	int function(EvAnnotationText* text) c_ev_annotation_text_get_is_open;
	int function(EvAnnotationText* text, EvAnnotationTextIcon icon) c_ev_annotation_text_set_icon;
	int function(EvAnnotationText* text, int isOpen) c_ev_annotation_text_set_is_open;

	// evince.document.AnnotationTextMarkup

	GType function() c_ev_annotation_text_markup_get_type;
	EvAnnotation* function(EvPage* page) c_ev_annotation_text_markup_highlight_new;
	EvAnnotation* function(EvPage* page) c_ev_annotation_text_markup_squiggly_new;
	EvAnnotation* function(EvPage* page) c_ev_annotation_text_markup_strike_out_new;
	EvAnnotation* function(EvPage* page) c_ev_annotation_text_markup_underline_new;
	EvAnnotationTextMarkupType function(EvAnnotationTextMarkup* annot) c_ev_annotation_text_markup_get_markup_type;
	int function(EvAnnotationTextMarkup* annot, EvAnnotationTextMarkupType markupType) c_ev_annotation_text_markup_set_markup_type;

	// evince.document.AsyncRenderer

	GType function() c_ev_async_renderer_get_type;
	void function(EvAsyncRenderer* renderer, int page, double scale, int rotation) c_ev_async_renderer_render_pixbuf;

	// evince.document.Attachment

	GType function() c_ev_attachment_get_type;
	EvAttachment* function(const(char)* name, const(char)* description, GTime mtime, GTime ctime, size_t size, void* data) c_ev_attachment_new;
	GQuark function() c_ev_attachment_error_quark;
	GTime function(EvAttachment* attachment) c_ev_attachment_get_creation_date;
	const(char)* function(EvAttachment* attachment) c_ev_attachment_get_description;
	const(char)* function(EvAttachment* attachment) c_ev_attachment_get_mime_type;
	GTime function(EvAttachment* attachment) c_ev_attachment_get_modification_date;
	const(char)* function(EvAttachment* attachment) c_ev_attachment_get_name;
	int function(EvAttachment* attachment, GdkScreen* screen, uint timestamp, GError** err) c_ev_attachment_open;
	int function(EvAttachment* attachment, GFile* file, GError** err) c_ev_attachment_save;

	// evince.document.Document

	GType function() c_ev_document_get_type;
	void function() c_ev_document_doc_mutex_lock;
	int function() c_ev_document_doc_mutex_trylock;
	void function() c_ev_document_doc_mutex_unlock;
	void function(GtkWidget* chooser, EvDocument* document) c_ev_document_factory_add_filters;
	EvDocument* function(const(char)* uri, GError** err) c_ev_document_factory_get_document;
	EvDocument* function(GFile* file, EvDocumentLoadFlags flags, GCancellable* cancellable, GError** err) c_ev_document_factory_get_document_for_gfile;
	EvDocument* function(GInputStream* stream, const(char)* mimeType, EvDocumentLoadFlags flags, GCancellable* cancellable, GError** err) c_ev_document_factory_get_document_for_stream;
	EvDocument* function(const(char)* uri, EvDocumentLoadFlags flags, GError** err) c_ev_document_factory_get_document_full;
	void function() c_ev_document_fc_mutex_lock;
	int function() c_ev_document_fc_mutex_trylock;
	void function() c_ev_document_fc_mutex_unlock;
	GMutex* function() c_ev_document_get_doc_mutex;
	GMutex* function() c_ev_document_get_fc_mutex;
	char* function(GTime utime) c_ev_document_misc_format_date;
	GdkPixbuf* function(int width, int height, int invertedColors) c_ev_document_misc_get_loading_thumbnail;
	void function(int pageWidth, int pageHeight, GtkBorder* border) c_ev_document_misc_get_page_border_size;
	void function(GtkWidget* widget, int* x, int* y) c_ev_document_misc_get_pointer_position;
	double function(GdkScreen* screen) c_ev_document_misc_get_screen_dpi;
	GdkPixbuf* function(int width, int height, GdkPixbuf* sourcePixbuf) c_ev_document_misc_get_thumbnail_frame;
	double function(GtkWidget* widget) c_ev_document_misc_get_widget_dpi;
	void function(GdkPixbuf* pixbuf) c_ev_document_misc_invert_pixbuf;
	void function(cairo_surface_t* surface) c_ev_document_misc_invert_surface;
	void function(cairo_t* cr, GtkWidget* widget, GdkRectangle* area, GtkBorder* border, int highlight, int invertedColors) c_ev_document_misc_paint_one_page;
	GdkPixbuf* function(cairo_surface_t* surface) c_ev_document_misc_pixbuf_from_surface;
	GdkPixbuf* function(GtkWidget* widget, int width, int height, int invertedColors) c_ev_document_misc_render_loading_thumbnail;
	cairo_surface_t* function(GtkWidget* widget, int width, int height, int invertedColors) c_ev_document_misc_render_loading_thumbnail_surface;
	cairo_surface_t* function(GtkWidget* widget, cairo_surface_t* sourceSurface, int width, int height) c_ev_document_misc_render_thumbnail_surface_with_frame;
	GdkPixbuf* function(GtkWidget* widget, GdkPixbuf* sourcePixbuf) c_ev_document_misc_render_thumbnail_with_frame;
	cairo_surface_t* function(GdkPixbuf* pixbuf) c_ev_document_misc_surface_from_pixbuf;
	cairo_surface_t* function(cairo_surface_t* surface, int destWidth, int destHeight, int destRotation) c_ev_document_misc_surface_rotate_and_scale;
	int function(EvDocument* document) c_ev_document_check_dimensions;
	int function(EvDocument* document, const(char)* pageLabel, int* pageIndex) c_ev_document_find_page_by_label;
	int function(EvDocument* document, EvDocumentBackendInfo* info) c_ev_document_get_backend_info;
	EvDocumentInfo* function(EvDocument* document) c_ev_document_get_info;
	int function(EvDocument* document) c_ev_document_get_max_label_len;
	void function(EvDocument* document, double* width, double* height) c_ev_document_get_max_page_size;
	void function(EvDocument* document, double* width, double* height) c_ev_document_get_min_page_size;
	int function(EvDocument* document) c_ev_document_get_modified;
	int function(EvDocument* document) c_ev_document_get_n_pages;
	EvPage* function(EvDocument* document, int index) c_ev_document_get_page;
	char* function(EvDocument* document, int pageIndex) c_ev_document_get_page_label;
	void function(EvDocument* document, int pageIndex, double* width, double* height) c_ev_document_get_page_size;
	ulong function(EvDocument* document) c_ev_document_get_size;
	GdkPixbuf* function(EvDocument* document, EvRenderContext* rc) c_ev_document_get_thumbnail;
	cairo_surface_t* function(EvDocument* document, EvRenderContext* rc) c_ev_document_get_thumbnail_surface;
	const(char)* function(EvDocument* document) c_ev_document_get_title;
	const(char)* function(EvDocument* document) c_ev_document_get_uri;
	int function(EvDocument* document) c_ev_document_has_synctex;
	int function(EvDocument* document) c_ev_document_has_text_page_labels;
	int function(EvDocument* document) c_ev_document_is_page_size_uniform;
	int function(EvDocument* document, const(char)* uri, GError** err) c_ev_document_load;
	int function(EvDocument* document, const(char)* uri, EvDocumentLoadFlags flags, GError** err) c_ev_document_load_full;
	int function(EvDocument* document, GFile* file, EvDocumentLoadFlags flags, GCancellable* cancellable, GError** err) c_ev_document_load_gfile;
	int function(EvDocument* document, GInputStream* stream, EvDocumentLoadFlags flags, GCancellable* cancellable, GError** err) c_ev_document_load_stream;
	cairo_surface_t* function(EvDocument* document, EvRenderContext* rc) c_ev_document_render;
	int function(EvDocument* document, const(char)* uri, GError** err) c_ev_document_save;
	void function(EvDocument* document, int modified) c_ev_document_set_modified;
	EvSourceLink* function(EvDocument* document, int pageIndex, float x, float y) c_ev_document_synctex_backward_search;
	EvMapping* function(EvDocument* document, EvSourceLink* sourceLink) c_ev_document_synctex_forward_search;

	// evince.document.DocumentAnnotations

	GType function() c_ev_document_annotations_get_type;
	void function(EvDocumentAnnotations* documentAnnots, EvAnnotation* annot, EvRectangle* rect) c_ev_document_annotations_add_annotation;
	int function(EvDocumentAnnotations* documentAnnots) c_ev_document_annotations_can_add_annotation;
	int function(EvDocumentAnnotations* documentAnnots) c_ev_document_annotations_can_remove_annotation;
	int function(EvDocumentAnnotations* documentAnnots) c_ev_document_annotations_document_is_modified;
	EvMappingList* function(EvDocumentAnnotations* documentAnnots, EvPage* page) c_ev_document_annotations_get_annotations;
	void function(EvDocumentAnnotations* documentAnnots, EvAnnotation* annot) c_ev_document_annotations_remove_annotation;
	void function(EvDocumentAnnotations* documentAnnots, EvAnnotation* annot, EvAnnotationsSaveMask mask) c_ev_document_annotations_save_annotation;

	// evince.document.DocumentAttachments

	GType function() c_ev_document_attachments_get_type;
	GList* function(EvDocumentAttachments* documentAttachments) c_ev_document_attachments_get_attachments;
	int function(EvDocumentAttachments* documentAttachments) c_ev_document_attachments_has_attachments;

	// evince.document.DocumentFind

	GType function() c_ev_document_find_get_type;
	GList* function(EvDocumentFind* documentFind, EvPage* page, const(char)* text, int caseSensitive) c_ev_document_find_find_text;
	GList* function(EvDocumentFind* documentFind, EvPage* page, const(char)* text, EvFindOptions options) c_ev_document_find_find_text_with_options;
	EvFindOptions function(EvDocumentFind* documentFind) c_ev_document_find_get_supported_options;

	// evince.document.DocumentFonts

	GType function() c_ev_document_fonts_get_type;
	void function(EvDocumentFonts* documentFonts, GtkTreeModel* model) c_ev_document_fonts_fill_model;
	const(char)* function(EvDocumentFonts* documentFonts) c_ev_document_fonts_get_fonts_summary;
	double function(EvDocumentFonts* documentFonts) c_ev_document_fonts_get_progress;
	int function(EvDocumentFonts* documentFonts, int nPages) c_ev_document_fonts_scan;

	// evince.document.DocumentForms

	GType function() c_ev_document_forms_get_type;
	int function(EvDocumentForms* documentForms) c_ev_document_forms_document_is_modified;
	int function(EvDocumentForms* documentForms, EvFormField* field) c_ev_document_forms_form_field_button_get_state;
	void function(EvDocumentForms* documentForms, EvFormField* field, int state) c_ev_document_forms_form_field_button_set_state;
	char* function(EvDocumentForms* documentForms, EvFormField* field, int index) c_ev_document_forms_form_field_choice_get_item;
	int function(EvDocumentForms* documentForms, EvFormField* field) c_ev_document_forms_form_field_choice_get_n_items;
	char* function(EvDocumentForms* documentForms, EvFormField* field) c_ev_document_forms_form_field_choice_get_text;
	int function(EvDocumentForms* documentForms, EvFormField* field, int index) c_ev_document_forms_form_field_choice_is_item_selected;
	void function(EvDocumentForms* documentForms, EvFormField* field, int index) c_ev_document_forms_form_field_choice_select_item;
	void function(EvDocumentForms* documentForms, EvFormField* field, const(char)* text) c_ev_document_forms_form_field_choice_set_text;
	void function(EvDocumentForms* documentForms, EvFormField* field, int index) c_ev_document_forms_form_field_choice_toggle_item;
	void function(EvDocumentForms* documentForms, EvFormField* field) c_ev_document_forms_form_field_choice_unselect_all;
	char* function(EvDocumentForms* documentForms, EvFormField* field) c_ev_document_forms_form_field_text_get_text;
	void function(EvDocumentForms* documentForms, EvFormField* field, const(char)* text) c_ev_document_forms_form_field_text_set_text;
	EvMappingList* function(EvDocumentForms* documentForms, EvPage* page) c_ev_document_forms_get_form_fields;

	// evince.document.DocumentImages

	GType function() c_ev_document_images_get_type;
	GdkPixbuf* function(EvDocumentImages* documentImages, EvImage* image) c_ev_document_images_get_image;
	EvMappingList* function(EvDocumentImages* documentImages, EvPage* page) c_ev_document_images_get_image_mapping;

	// evince.document.DocumentInfo

	GType function() c_ev_document_info_get_type;
	EvDocumentInfo* function(EvDocumentInfo* info) c_ev_document_info_copy;
	void function(EvDocumentInfo* info) c_ev_document_info_free;

	// evince.document.DocumentLayers

	GType function() c_ev_document_layers_get_type;
	GtkTreeModel* function(EvDocumentLayers* documentLayers) c_ev_document_layers_get_layers;
	int function(EvDocumentLayers* documentLayers) c_ev_document_layers_has_layers;
	void function(EvDocumentLayers* documentLayers, EvLayer* layer) c_ev_document_layers_hide_layer;
	int function(EvDocumentLayers* documentLayers, EvLayer* layer) c_ev_document_layers_layer_is_visible;
	void function(EvDocumentLayers* documentLayers, EvLayer* layer) c_ev_document_layers_show_layer;

	// evince.document.DocumentLicense

	GType function() c_ev_document_license_get_type;
	EvDocumentLicense* function() c_ev_document_license_new;
	EvDocumentLicense* function(EvDocumentLicense* license) c_ev_document_license_copy;
	void function(EvDocumentLicense* license) c_ev_document_license_free;
	const(char)* function(EvDocumentLicense* license) c_ev_document_license_get_text;
	const(char)* function(EvDocumentLicense* license) c_ev_document_license_get_uri;
	const(char)* function(EvDocumentLicense* license) c_ev_document_license_get_web_statement;

	// evince.document.DocumentLinks

	GType function() c_ev_document_links_get_type;
	EvLinkDest* function(EvDocumentLinks* documentLinks, const(char)* linkName) c_ev_document_links_find_link_dest;
	int function(EvDocumentLinks* documentLinks, const(char)* linkName) c_ev_document_links_find_link_page;
	int function(EvDocumentLinks* documentLinks, EvLinkDest* dest) c_ev_document_links_get_dest_page;
	char* function(EvDocumentLinks* documentLinks, EvLinkDest* dest) c_ev_document_links_get_dest_page_label;
	int function(EvDocumentLinks* documentLinks, EvLink* link) c_ev_document_links_get_link_page;
	char* function(EvDocumentLinks* documentLinks, EvLink* link) c_ev_document_links_get_link_page_label;
	EvMappingList* function(EvDocumentLinks* documentLinks, EvPage* page) c_ev_document_links_get_links;
	GtkTreeModel* function(EvDocumentLinks* documentLinks) c_ev_document_links_get_links_model;
	int function(EvDocumentLinks* documentLinks) c_ev_document_links_has_document_links;

	// evince.document.DocumentMedia

	GType function() c_ev_document_media_get_type;
	EvMappingList* function(EvDocumentMedia* documentMedia, EvPage* page) c_ev_document_media_get_media_mapping;

	// evince.document.DocumentPrint

	GType function() c_ev_document_print_get_type;
	void function(EvDocumentPrint* documentPrint, EvPage* page, cairo_t* cr) c_ev_document_print_print_page;

	// evince.document.DocumentSecurity

	GType function() c_ev_document_security_get_type;
	int function(EvDocumentSecurity* documentSecurity) c_ev_document_security_has_document_security;
	void function(EvDocumentSecurity* documentSecurity, const(char)* password) c_ev_document_security_set_password;

	// evince.document.DocumentText

	GType function() c_ev_document_text_get_type;
	char* function(EvDocumentText* documentText, EvPage* page) c_ev_document_text_get_text;
	PangoAttrList* function(EvDocumentText* documentText, EvPage* page) c_ev_document_text_get_text_attrs;
	int function(EvDocumentText* documentText, EvPage* page, EvRectangle** areas, uint* nAreas) c_ev_document_text_get_text_layout;
	cairo_region_t* function(EvDocumentText* documentText, EvPage* page) c_ev_document_text_get_text_mapping;

	// evince.document.DocumentTransition

	GType function() c_ev_document_transition_get_type;
	EvTransitionEffect* function(EvDocumentTransition* documentTrans, int page) c_ev_document_transition_get_effect;
	double function(EvDocumentTransition* documentTrans, int page) c_ev_document_transition_get_page_duration;

	// evince.document.FileExporter

	GType function() c_ev_file_exporter_get_type;
	void function(EvFileExporter* exporter, EvFileExporterContext* fc) c_ev_file_exporter_begin;
	void function(EvFileExporter* exporter) c_ev_file_exporter_begin_page;
	void function(EvFileExporter* exporter, EvRenderContext* rc) c_ev_file_exporter_do_page;
	void function(EvFileExporter* exporter) c_ev_file_exporter_end;
	void function(EvFileExporter* exporter) c_ev_file_exporter_end_page;
	EvFileExporterCapabilities function(EvFileExporter* exporter) c_ev_file_exporter_get_capabilities;

	// evince.document.FormField

	GType function() c_ev_form_field_get_type;

	// evince.document.FormFieldButton

	GType function() c_ev_form_field_button_get_type;
	EvFormField* function(int id, EvFormFieldButtonType type) c_ev_form_field_button_new;

	// evince.document.FormFieldChoice

	GType function() c_ev_form_field_choice_get_type;
	EvFormField* function(int id, EvFormFieldChoiceType type) c_ev_form_field_choice_new;

	// evince.document.FormFieldSignature

	GType function() c_ev_form_field_signature_get_type;
	EvFormField* function(int id) c_ev_form_field_signature_new;

	// evince.document.FormFieldText

	GType function() c_ev_form_field_text_get_type;
	EvFormField* function(int id, EvFormFieldTextType type) c_ev_form_field_text_new;

	// evince.document.Image

	GType function() c_ev_image_get_type;
	EvImage* function(int page, int imgId) c_ev_image_new;
	EvImage* function(GdkPixbuf* pixbuf) c_ev_image_new_from_pixbuf;
	int function(EvImage* image) c_ev_image_get_id;
	int function(EvImage* image) c_ev_image_get_page;
	GdkPixbuf* function(EvImage* image) c_ev_image_get_pixbuf;
	const(char)* function(EvImage* image) c_ev_image_get_tmp_uri;
	const(char)* function(EvImage* image, GdkPixbuf* pixbuf) c_ev_image_save_tmp;

	// evince.document.EvinceLayer

	GType function() c_ev_layer_get_type;
	EvLayer* function(int isParent, int rbGroup) c_ev_layer_new;
	int function(EvLayer* layer) c_ev_layer_get_rb_group;
	int function(EvLayer* layer) c_ev_layer_is_parent;

	// evince.document.Link

	GType function() c_ev_link_get_type;
	EvLink* function(const(char)* title, EvLinkAction* action) c_ev_link_new;
	EvLinkAction* function(EvLink* self) c_ev_link_get_action;
	const(char)* function(EvLink* self) c_ev_link_get_title;

	// evince.document.LinkAction

	GType function() c_ev_link_action_get_type;
	EvLinkAction* function(EvLinkDest* dest) c_ev_link_action_new_dest;
	EvLinkAction* function(const(char)* uri) c_ev_link_action_new_external_uri;
	EvLinkAction* function(const(char)* filename, const(char)* params) c_ev_link_action_new_launch;
	EvLinkAction* function(GList* showList, GList* hideList, GList* toggleList) c_ev_link_action_new_layers_state;
	EvLinkAction* function(const(char)* name) c_ev_link_action_new_named;
	EvLinkAction* function(EvLinkDest* dest, const(char)* filename) c_ev_link_action_new_remote;
	int function(EvLinkAction* a, EvLinkAction* b) c_ev_link_action_equal;
	EvLinkActionType function(EvLinkAction* self) c_ev_link_action_get_action_type;
	EvLinkDest* function(EvLinkAction* self) c_ev_link_action_get_dest;
	const(char)* function(EvLinkAction* self) c_ev_link_action_get_filename;
	GList* function(EvLinkAction* self) c_ev_link_action_get_hide_list;
	const(char)* function(EvLinkAction* self) c_ev_link_action_get_name;
	const(char)* function(EvLinkAction* self) c_ev_link_action_get_params;
	GList* function(EvLinkAction* self) c_ev_link_action_get_show_list;
	GList* function(EvLinkAction* self) c_ev_link_action_get_toggle_list;
	const(char)* function(EvLinkAction* self) c_ev_link_action_get_uri;

	// evince.document.LinkDest

	GType function() c_ev_link_dest_get_type;
	EvLinkDest* function(int page) c_ev_link_dest_new_fit;
	EvLinkDest* function(int page, double top, int changeTop) c_ev_link_dest_new_fith;
	EvLinkDest* function(int page, double left, double bottom, double right, double top) c_ev_link_dest_new_fitr;
	EvLinkDest* function(int page, double left, int changeLeft) c_ev_link_dest_new_fitv;
	EvLinkDest* function(const(char)* namedDest) c_ev_link_dest_new_named;
	EvLinkDest* function(int page) c_ev_link_dest_new_page;
	EvLinkDest* function(const(char)* pageLabel) c_ev_link_dest_new_page_label;
	EvLinkDest* function(int page, double left, double top, double zoom, int changeLeft, int changeTop, int changeZoom) c_ev_link_dest_new_xyz;
	int function(EvLinkDest* a, EvLinkDest* b) c_ev_link_dest_equal;
	double function(EvLinkDest* self) c_ev_link_dest_get_bottom;
	EvLinkDestType function(EvLinkDest* self) c_ev_link_dest_get_dest_type;
	double function(EvLinkDest* self, int* changeLeft) c_ev_link_dest_get_left;
	const(char)* function(EvLinkDest* self) c_ev_link_dest_get_named_dest;
	int function(EvLinkDest* self) c_ev_link_dest_get_page;
	const(char)* function(EvLinkDest* self) c_ev_link_dest_get_page_label;
	double function(EvLinkDest* self) c_ev_link_dest_get_right;
	double function(EvLinkDest* self, int* changeTop) c_ev_link_dest_get_top;
	double function(EvLinkDest* self, int* changeZoom) c_ev_link_dest_get_zoom;

	// evince.document.MappingList

	GType function() c_ev_mapping_list_get_type;
	EvMappingList* function(uint page, GList* list, GDestroyNotify dataDestroyFunc) c_ev_mapping_list_new;
	EvMapping* function(EvMappingList* mappingList, void* data) c_ev_mapping_list_find;
	EvMapping* function(EvMappingList* mappingList, void* data, GCompareFunc func) c_ev_mapping_list_find_custom;
	EvMapping* function(EvMappingList* mappingList, double x, double y) c_ev_mapping_list_get;
	void* function(EvMappingList* mappingList, double x, double y) c_ev_mapping_list_get_data;
	GList* function(EvMappingList* mappingList) c_ev_mapping_list_get_list;
	uint function(EvMappingList* mappingList) c_ev_mapping_list_get_page;
	uint function(EvMappingList* mappingList) c_ev_mapping_list_length;
	EvMapping* function(EvMappingList* mappingList, uint n) c_ev_mapping_list_nth;
	EvMappingList* function(EvMappingList* mappingList) c_ev_mapping_list_ref;
	void function(EvMappingList* mappingList, EvMapping* mapping) c_ev_mapping_list_remove;
	void function(EvMappingList* mappingList) c_ev_mapping_list_unref;

	// evince.document.Media

	GType function() c_ev_media_get_type;
	EvMedia* function(EvPage* page, const(char)* uri) c_ev_media_new_for_uri;
	uint function(EvMedia* media) c_ev_media_get_page_index;
	int function(EvMedia* media) c_ev_media_get_show_controls;
	const(char)* function(EvMedia* media) c_ev_media_get_uri;
	void function(EvMedia* media, int showControls) c_ev_media_set_show_controls;

	// evince.document.Page

	GType function() c_ev_page_get_type;
	EvPage* function(int index) c_ev_page_new;

	// evince.document.Rectangle

	GType function() c_ev_rectangle_get_type;
	EvRectangle* function() c_ev_rectangle_new;
	EvRectangle* function(EvRectangle* evRect) c_ev_rectangle_copy;
	void function(EvRectangle* evRect) c_ev_rectangle_free;

	// evince.document.RenderContext

	GType function() c_ev_render_context_get_type;
	EvRenderContext* function(EvPage* page, int rotation, double scale) c_ev_render_context_new;
	void function(EvRenderContext* rc, double widthPoints, double heightPoints, int* scaledWidth, int* scaledHeight) c_ev_render_context_compute_scaled_size;
	void function(EvRenderContext* rc, double widthPoints, double heightPoints, double* scaleX, double* scaleY) c_ev_render_context_compute_scales;
	void function(EvRenderContext* rc, double widthPoints, double heightPoints, int* transformedWidth, int* transformedHeight) c_ev_render_context_compute_transformed_size;
	void function(EvRenderContext* rc, EvPage* page) c_ev_render_context_set_page;
	void function(EvRenderContext* rc, int rotation) c_ev_render_context_set_rotation;
	void function(EvRenderContext* rc, double scale) c_ev_render_context_set_scale;
	void function(EvRenderContext* rc, int targetWidth, int targetHeight) c_ev_render_context_set_target_size;

	// evince.document.Selection

	GType function() c_ev_selection_get_type;
	char* function(EvSelection* selection, EvPage* page, EvSelectionStyle style, EvRectangle* points) c_ev_selection_get_selected_text;
	cairo_region_t* function(EvSelection* selection, EvRenderContext* rc, EvSelectionStyle style, EvRectangle* points) c_ev_selection_get_selection_region;
	void function(EvSelection* selection, EvRenderContext* rc, cairo_surface_t** surface, EvRectangle* points, EvRectangle* oldPoints, EvSelectionStyle style, GdkColor* text, GdkColor* base) c_ev_selection_render_selection;

	// evince.document.SourceLink

	GType function() c_ev_source_link_get_type;
	EvSourceLink* function(const(char)* filename, int line, int col) c_ev_source_link_new;
	EvSourceLink* function(EvSourceLink* link) c_ev_source_link_copy;
	void function(EvSourceLink* link) c_ev_source_link_free;

	// evince.document.TransitionEffect

	GType function() c_ev_transition_effect_get_type;
	EvTransitionEffect* function(EvTransitionEffectType type, const(char)* firstPropertyName, ... ) c_ev_transition_effect_new;

	// evince.document.EvinceDocument

	GList* function() c_ev_backends_manager_get_all_types_info;
	EvDocument* function(const(char)* mimeType) c_ev_backends_manager_get_document;
	const(char)* function(EvDocument* document) c_ev_backends_manager_get_document_module_name;
	EvTypeInfo* function(EvDocument* document) c_ev_backends_manager_get_document_type_info;
	char* function(const(char)* uri, EvCompressionType type, GError** err) c_ev_file_compress;
	int function(const(char)* from, const(char)* to, GError** err) c_ev_file_copy_metadata;
	char* function(const(char)* uri, int fast, GError** err) c_ev_file_get_mime_type;
	int function(GFile* file) c_ev_file_is_temp;
	char* function(const(char)* uri, EvCompressionType type, GError** err) c_ev_file_uncompress;
	char* function(const(char)* tmpl, GError** err) c_ev_mkdtemp;
	int function(const(char)* tmpl, char** fileName, GError** err) c_ev_mkstemp;
	GFile* function(const(char)* tmpl, GError** err) c_ev_mkstemp_file;
	const(char)* function() c_ev_get_locale_dir;
	int function() c_ev_init;
	int function(EvRectangle* a, EvRectangle* b) c_ev_rect_cmp;
	void function() c_ev_shutdown;
	void function(GFile* file) c_ev_tmp_file_unlink;
	void function(const(char)* filename) c_ev_tmp_filename_unlink;
	void function(const(char)* uri) c_ev_tmp_uri_unlink;
	int function(const(char)* from, const(char)* to, GError** err) c_ev_xfer_uri_simple;
}


// evince.document.Annotation

alias c_ev_annotation_get_type ev_annotation_get_type;
alias c_ev_annotation_equal ev_annotation_equal;
alias c_ev_annotation_get_annotation_type ev_annotation_get_annotation_type;
alias c_ev_annotation_get_area ev_annotation_get_area;
alias c_ev_annotation_get_color ev_annotation_get_color;
alias c_ev_annotation_get_contents ev_annotation_get_contents;
alias c_ev_annotation_get_modified ev_annotation_get_modified;
alias c_ev_annotation_get_name ev_annotation_get_name;
alias c_ev_annotation_get_page ev_annotation_get_page;
alias c_ev_annotation_get_page_index ev_annotation_get_page_index;
alias c_ev_annotation_get_rgba ev_annotation_get_rgba;
alias c_ev_annotation_set_area ev_annotation_set_area;
alias c_ev_annotation_set_color ev_annotation_set_color;
alias c_ev_annotation_set_contents ev_annotation_set_contents;
alias c_ev_annotation_set_modified ev_annotation_set_modified;
alias c_ev_annotation_set_modified_from_time ev_annotation_set_modified_from_time;
alias c_ev_annotation_set_name ev_annotation_set_name;
alias c_ev_annotation_set_rgba ev_annotation_set_rgba;

// evince.document.AnnotationAttachment

alias c_ev_annotation_attachment_get_type ev_annotation_attachment_get_type;
alias c_ev_annotation_attachment_new ev_annotation_attachment_new;
alias c_ev_annotation_attachment_get_attachment ev_annotation_attachment_get_attachment;
alias c_ev_annotation_attachment_set_attachment ev_annotation_attachment_set_attachment;

// evince.document.AnnotationMarkup

alias c_ev_annotation_markup_get_type ev_annotation_markup_get_type;
alias c_ev_annotation_markup_can_have_popup ev_annotation_markup_can_have_popup;
alias c_ev_annotation_markup_get_label ev_annotation_markup_get_label;
alias c_ev_annotation_markup_get_opacity ev_annotation_markup_get_opacity;
alias c_ev_annotation_markup_get_popup_is_open ev_annotation_markup_get_popup_is_open;
alias c_ev_annotation_markup_get_rectangle ev_annotation_markup_get_rectangle;
alias c_ev_annotation_markup_has_popup ev_annotation_markup_has_popup;
alias c_ev_annotation_markup_set_has_popup ev_annotation_markup_set_has_popup;
alias c_ev_annotation_markup_set_label ev_annotation_markup_set_label;
alias c_ev_annotation_markup_set_opacity ev_annotation_markup_set_opacity;
alias c_ev_annotation_markup_set_popup_is_open ev_annotation_markup_set_popup_is_open;
alias c_ev_annotation_markup_set_rectangle ev_annotation_markup_set_rectangle;

// evince.document.AnnotationText

alias c_ev_annotation_text_get_type ev_annotation_text_get_type;
alias c_ev_annotation_text_new ev_annotation_text_new;
alias c_ev_annotation_text_get_icon ev_annotation_text_get_icon;
alias c_ev_annotation_text_get_is_open ev_annotation_text_get_is_open;
alias c_ev_annotation_text_set_icon ev_annotation_text_set_icon;
alias c_ev_annotation_text_set_is_open ev_annotation_text_set_is_open;

// evince.document.AnnotationTextMarkup

alias c_ev_annotation_text_markup_get_type ev_annotation_text_markup_get_type;
alias c_ev_annotation_text_markup_highlight_new ev_annotation_text_markup_highlight_new;
alias c_ev_annotation_text_markup_squiggly_new ev_annotation_text_markup_squiggly_new;
alias c_ev_annotation_text_markup_strike_out_new ev_annotation_text_markup_strike_out_new;
alias c_ev_annotation_text_markup_underline_new ev_annotation_text_markup_underline_new;
alias c_ev_annotation_text_markup_get_markup_type ev_annotation_text_markup_get_markup_type;
alias c_ev_annotation_text_markup_set_markup_type ev_annotation_text_markup_set_markup_type;

// evince.document.AsyncRenderer

alias c_ev_async_renderer_get_type ev_async_renderer_get_type;
alias c_ev_async_renderer_render_pixbuf ev_async_renderer_render_pixbuf;

// evince.document.Attachment

alias c_ev_attachment_get_type ev_attachment_get_type;
alias c_ev_attachment_new ev_attachment_new;
alias c_ev_attachment_error_quark ev_attachment_error_quark;
alias c_ev_attachment_get_creation_date ev_attachment_get_creation_date;
alias c_ev_attachment_get_description ev_attachment_get_description;
alias c_ev_attachment_get_mime_type ev_attachment_get_mime_type;
alias c_ev_attachment_get_modification_date ev_attachment_get_modification_date;
alias c_ev_attachment_get_name ev_attachment_get_name;
alias c_ev_attachment_open ev_attachment_open;
alias c_ev_attachment_save ev_attachment_save;

// evince.document.Document

alias c_ev_document_get_type ev_document_get_type;
alias c_ev_document_doc_mutex_lock ev_document_doc_mutex_lock;
alias c_ev_document_doc_mutex_trylock ev_document_doc_mutex_trylock;
alias c_ev_document_doc_mutex_unlock ev_document_doc_mutex_unlock;
alias c_ev_document_factory_add_filters ev_document_factory_add_filters;
alias c_ev_document_factory_get_document ev_document_factory_get_document;
alias c_ev_document_factory_get_document_for_gfile ev_document_factory_get_document_for_gfile;
alias c_ev_document_factory_get_document_for_stream ev_document_factory_get_document_for_stream;
alias c_ev_document_factory_get_document_full ev_document_factory_get_document_full;
alias c_ev_document_fc_mutex_lock ev_document_fc_mutex_lock;
alias c_ev_document_fc_mutex_trylock ev_document_fc_mutex_trylock;
alias c_ev_document_fc_mutex_unlock ev_document_fc_mutex_unlock;
alias c_ev_document_get_doc_mutex ev_document_get_doc_mutex;
alias c_ev_document_get_fc_mutex ev_document_get_fc_mutex;
alias c_ev_document_misc_format_date ev_document_misc_format_date;
alias c_ev_document_misc_get_loading_thumbnail ev_document_misc_get_loading_thumbnail;
alias c_ev_document_misc_get_page_border_size ev_document_misc_get_page_border_size;
alias c_ev_document_misc_get_pointer_position ev_document_misc_get_pointer_position;
alias c_ev_document_misc_get_screen_dpi ev_document_misc_get_screen_dpi;
alias c_ev_document_misc_get_thumbnail_frame ev_document_misc_get_thumbnail_frame;
alias c_ev_document_misc_get_widget_dpi ev_document_misc_get_widget_dpi;
alias c_ev_document_misc_invert_pixbuf ev_document_misc_invert_pixbuf;
alias c_ev_document_misc_invert_surface ev_document_misc_invert_surface;
alias c_ev_document_misc_paint_one_page ev_document_misc_paint_one_page;
alias c_ev_document_misc_pixbuf_from_surface ev_document_misc_pixbuf_from_surface;
alias c_ev_document_misc_render_loading_thumbnail ev_document_misc_render_loading_thumbnail;
alias c_ev_document_misc_render_loading_thumbnail_surface ev_document_misc_render_loading_thumbnail_surface;
alias c_ev_document_misc_render_thumbnail_surface_with_frame ev_document_misc_render_thumbnail_surface_with_frame;
alias c_ev_document_misc_render_thumbnail_with_frame ev_document_misc_render_thumbnail_with_frame;
alias c_ev_document_misc_surface_from_pixbuf ev_document_misc_surface_from_pixbuf;
alias c_ev_document_misc_surface_rotate_and_scale ev_document_misc_surface_rotate_and_scale;
alias c_ev_document_check_dimensions ev_document_check_dimensions;
alias c_ev_document_find_page_by_label ev_document_find_page_by_label;
alias c_ev_document_get_backend_info ev_document_get_backend_info;
alias c_ev_document_get_info ev_document_get_info;
alias c_ev_document_get_max_label_len ev_document_get_max_label_len;
alias c_ev_document_get_max_page_size ev_document_get_max_page_size;
alias c_ev_document_get_min_page_size ev_document_get_min_page_size;
alias c_ev_document_get_modified ev_document_get_modified;
alias c_ev_document_get_n_pages ev_document_get_n_pages;
alias c_ev_document_get_page ev_document_get_page;
alias c_ev_document_get_page_label ev_document_get_page_label;
alias c_ev_document_get_page_size ev_document_get_page_size;
alias c_ev_document_get_size ev_document_get_size;
alias c_ev_document_get_thumbnail ev_document_get_thumbnail;
alias c_ev_document_get_thumbnail_surface ev_document_get_thumbnail_surface;
alias c_ev_document_get_title ev_document_get_title;
alias c_ev_document_get_uri ev_document_get_uri;
alias c_ev_document_has_synctex ev_document_has_synctex;
alias c_ev_document_has_text_page_labels ev_document_has_text_page_labels;
alias c_ev_document_is_page_size_uniform ev_document_is_page_size_uniform;
alias c_ev_document_load ev_document_load;
alias c_ev_document_load_full ev_document_load_full;
alias c_ev_document_load_gfile ev_document_load_gfile;
alias c_ev_document_load_stream ev_document_load_stream;
alias c_ev_document_render ev_document_render;
alias c_ev_document_save ev_document_save;
alias c_ev_document_set_modified ev_document_set_modified;
alias c_ev_document_synctex_backward_search ev_document_synctex_backward_search;
alias c_ev_document_synctex_forward_search ev_document_synctex_forward_search;

// evince.document.DocumentAnnotations

alias c_ev_document_annotations_get_type ev_document_annotations_get_type;
alias c_ev_document_annotations_add_annotation ev_document_annotations_add_annotation;
alias c_ev_document_annotations_can_add_annotation ev_document_annotations_can_add_annotation;
alias c_ev_document_annotations_can_remove_annotation ev_document_annotations_can_remove_annotation;
alias c_ev_document_annotations_document_is_modified ev_document_annotations_document_is_modified;
alias c_ev_document_annotations_get_annotations ev_document_annotations_get_annotations;
alias c_ev_document_annotations_remove_annotation ev_document_annotations_remove_annotation;
alias c_ev_document_annotations_save_annotation ev_document_annotations_save_annotation;

// evince.document.DocumentAttachments

alias c_ev_document_attachments_get_type ev_document_attachments_get_type;
alias c_ev_document_attachments_get_attachments ev_document_attachments_get_attachments;
alias c_ev_document_attachments_has_attachments ev_document_attachments_has_attachments;

// evince.document.DocumentFind

alias c_ev_document_find_get_type ev_document_find_get_type;
alias c_ev_document_find_find_text ev_document_find_find_text;
alias c_ev_document_find_find_text_with_options ev_document_find_find_text_with_options;
alias c_ev_document_find_get_supported_options ev_document_find_get_supported_options;

// evince.document.DocumentFonts

alias c_ev_document_fonts_get_type ev_document_fonts_get_type;
alias c_ev_document_fonts_fill_model ev_document_fonts_fill_model;
alias c_ev_document_fonts_get_fonts_summary ev_document_fonts_get_fonts_summary;
alias c_ev_document_fonts_get_progress ev_document_fonts_get_progress;
alias c_ev_document_fonts_scan ev_document_fonts_scan;

// evince.document.DocumentForms

alias c_ev_document_forms_get_type ev_document_forms_get_type;
alias c_ev_document_forms_document_is_modified ev_document_forms_document_is_modified;
alias c_ev_document_forms_form_field_button_get_state ev_document_forms_form_field_button_get_state;
alias c_ev_document_forms_form_field_button_set_state ev_document_forms_form_field_button_set_state;
alias c_ev_document_forms_form_field_choice_get_item ev_document_forms_form_field_choice_get_item;
alias c_ev_document_forms_form_field_choice_get_n_items ev_document_forms_form_field_choice_get_n_items;
alias c_ev_document_forms_form_field_choice_get_text ev_document_forms_form_field_choice_get_text;
alias c_ev_document_forms_form_field_choice_is_item_selected ev_document_forms_form_field_choice_is_item_selected;
alias c_ev_document_forms_form_field_choice_select_item ev_document_forms_form_field_choice_select_item;
alias c_ev_document_forms_form_field_choice_set_text ev_document_forms_form_field_choice_set_text;
alias c_ev_document_forms_form_field_choice_toggle_item ev_document_forms_form_field_choice_toggle_item;
alias c_ev_document_forms_form_field_choice_unselect_all ev_document_forms_form_field_choice_unselect_all;
alias c_ev_document_forms_form_field_text_get_text ev_document_forms_form_field_text_get_text;
alias c_ev_document_forms_form_field_text_set_text ev_document_forms_form_field_text_set_text;
alias c_ev_document_forms_get_form_fields ev_document_forms_get_form_fields;

// evince.document.DocumentImages

alias c_ev_document_images_get_type ev_document_images_get_type;
alias c_ev_document_images_get_image ev_document_images_get_image;
alias c_ev_document_images_get_image_mapping ev_document_images_get_image_mapping;

// evince.document.DocumentInfo

alias c_ev_document_info_get_type ev_document_info_get_type;
alias c_ev_document_info_copy ev_document_info_copy;
alias c_ev_document_info_free ev_document_info_free;

// evince.document.DocumentLayers

alias c_ev_document_layers_get_type ev_document_layers_get_type;
alias c_ev_document_layers_get_layers ev_document_layers_get_layers;
alias c_ev_document_layers_has_layers ev_document_layers_has_layers;
alias c_ev_document_layers_hide_layer ev_document_layers_hide_layer;
alias c_ev_document_layers_layer_is_visible ev_document_layers_layer_is_visible;
alias c_ev_document_layers_show_layer ev_document_layers_show_layer;

// evince.document.DocumentLicense

alias c_ev_document_license_get_type ev_document_license_get_type;
alias c_ev_document_license_new ev_document_license_new;
alias c_ev_document_license_copy ev_document_license_copy;
alias c_ev_document_license_free ev_document_license_free;
alias c_ev_document_license_get_text ev_document_license_get_text;
alias c_ev_document_license_get_uri ev_document_license_get_uri;
alias c_ev_document_license_get_web_statement ev_document_license_get_web_statement;

// evince.document.DocumentLinks

alias c_ev_document_links_get_type ev_document_links_get_type;
alias c_ev_document_links_find_link_dest ev_document_links_find_link_dest;
alias c_ev_document_links_find_link_page ev_document_links_find_link_page;
alias c_ev_document_links_get_dest_page ev_document_links_get_dest_page;
alias c_ev_document_links_get_dest_page_label ev_document_links_get_dest_page_label;
alias c_ev_document_links_get_link_page ev_document_links_get_link_page;
alias c_ev_document_links_get_link_page_label ev_document_links_get_link_page_label;
alias c_ev_document_links_get_links ev_document_links_get_links;
alias c_ev_document_links_get_links_model ev_document_links_get_links_model;
alias c_ev_document_links_has_document_links ev_document_links_has_document_links;

// evince.document.DocumentMedia

alias c_ev_document_media_get_type ev_document_media_get_type;
alias c_ev_document_media_get_media_mapping ev_document_media_get_media_mapping;

// evince.document.DocumentPrint

alias c_ev_document_print_get_type ev_document_print_get_type;
alias c_ev_document_print_print_page ev_document_print_print_page;

// evince.document.DocumentSecurity

alias c_ev_document_security_get_type ev_document_security_get_type;
alias c_ev_document_security_has_document_security ev_document_security_has_document_security;
alias c_ev_document_security_set_password ev_document_security_set_password;

// evince.document.DocumentText

alias c_ev_document_text_get_type ev_document_text_get_type;
alias c_ev_document_text_get_text ev_document_text_get_text;
alias c_ev_document_text_get_text_attrs ev_document_text_get_text_attrs;
alias c_ev_document_text_get_text_layout ev_document_text_get_text_layout;
alias c_ev_document_text_get_text_mapping ev_document_text_get_text_mapping;

// evince.document.DocumentTransition

alias c_ev_document_transition_get_type ev_document_transition_get_type;
alias c_ev_document_transition_get_effect ev_document_transition_get_effect;
alias c_ev_document_transition_get_page_duration ev_document_transition_get_page_duration;

// evince.document.FileExporter

alias c_ev_file_exporter_get_type ev_file_exporter_get_type;
alias c_ev_file_exporter_begin ev_file_exporter_begin;
alias c_ev_file_exporter_begin_page ev_file_exporter_begin_page;
alias c_ev_file_exporter_do_page ev_file_exporter_do_page;
alias c_ev_file_exporter_end ev_file_exporter_end;
alias c_ev_file_exporter_end_page ev_file_exporter_end_page;
alias c_ev_file_exporter_get_capabilities ev_file_exporter_get_capabilities;

// evince.document.FormField

alias c_ev_form_field_get_type ev_form_field_get_type;

// evince.document.FormFieldButton

alias c_ev_form_field_button_get_type ev_form_field_button_get_type;
alias c_ev_form_field_button_new ev_form_field_button_new;

// evince.document.FormFieldChoice

alias c_ev_form_field_choice_get_type ev_form_field_choice_get_type;
alias c_ev_form_field_choice_new ev_form_field_choice_new;

// evince.document.FormFieldSignature

alias c_ev_form_field_signature_get_type ev_form_field_signature_get_type;
alias c_ev_form_field_signature_new ev_form_field_signature_new;

// evince.document.FormFieldText

alias c_ev_form_field_text_get_type ev_form_field_text_get_type;
alias c_ev_form_field_text_new ev_form_field_text_new;

// evince.document.Image

alias c_ev_image_get_type ev_image_get_type;
alias c_ev_image_new ev_image_new;
alias c_ev_image_new_from_pixbuf ev_image_new_from_pixbuf;
alias c_ev_image_get_id ev_image_get_id;
alias c_ev_image_get_page ev_image_get_page;
alias c_ev_image_get_pixbuf ev_image_get_pixbuf;
alias c_ev_image_get_tmp_uri ev_image_get_tmp_uri;
alias c_ev_image_save_tmp ev_image_save_tmp;

// evince.document.EvinceLayer

alias c_ev_layer_get_type ev_layer_get_type;
alias c_ev_layer_new ev_layer_new;
alias c_ev_layer_get_rb_group ev_layer_get_rb_group;
alias c_ev_layer_is_parent ev_layer_is_parent;

// evince.document.Link

alias c_ev_link_get_type ev_link_get_type;
alias c_ev_link_new ev_link_new;
alias c_ev_link_get_action ev_link_get_action;
alias c_ev_link_get_title ev_link_get_title;

// evince.document.LinkAction

alias c_ev_link_action_get_type ev_link_action_get_type;
alias c_ev_link_action_new_dest ev_link_action_new_dest;
alias c_ev_link_action_new_external_uri ev_link_action_new_external_uri;
alias c_ev_link_action_new_launch ev_link_action_new_launch;
alias c_ev_link_action_new_layers_state ev_link_action_new_layers_state;
alias c_ev_link_action_new_named ev_link_action_new_named;
alias c_ev_link_action_new_remote ev_link_action_new_remote;
alias c_ev_link_action_equal ev_link_action_equal;
alias c_ev_link_action_get_action_type ev_link_action_get_action_type;
alias c_ev_link_action_get_dest ev_link_action_get_dest;
alias c_ev_link_action_get_filename ev_link_action_get_filename;
alias c_ev_link_action_get_hide_list ev_link_action_get_hide_list;
alias c_ev_link_action_get_name ev_link_action_get_name;
alias c_ev_link_action_get_params ev_link_action_get_params;
alias c_ev_link_action_get_show_list ev_link_action_get_show_list;
alias c_ev_link_action_get_toggle_list ev_link_action_get_toggle_list;
alias c_ev_link_action_get_uri ev_link_action_get_uri;

// evince.document.LinkDest

alias c_ev_link_dest_get_type ev_link_dest_get_type;
alias c_ev_link_dest_new_fit ev_link_dest_new_fit;
alias c_ev_link_dest_new_fith ev_link_dest_new_fith;
alias c_ev_link_dest_new_fitr ev_link_dest_new_fitr;
alias c_ev_link_dest_new_fitv ev_link_dest_new_fitv;
alias c_ev_link_dest_new_named ev_link_dest_new_named;
alias c_ev_link_dest_new_page ev_link_dest_new_page;
alias c_ev_link_dest_new_page_label ev_link_dest_new_page_label;
alias c_ev_link_dest_new_xyz ev_link_dest_new_xyz;
alias c_ev_link_dest_equal ev_link_dest_equal;
alias c_ev_link_dest_get_bottom ev_link_dest_get_bottom;
alias c_ev_link_dest_get_dest_type ev_link_dest_get_dest_type;
alias c_ev_link_dest_get_left ev_link_dest_get_left;
alias c_ev_link_dest_get_named_dest ev_link_dest_get_named_dest;
alias c_ev_link_dest_get_page ev_link_dest_get_page;
alias c_ev_link_dest_get_page_label ev_link_dest_get_page_label;
alias c_ev_link_dest_get_right ev_link_dest_get_right;
alias c_ev_link_dest_get_top ev_link_dest_get_top;
alias c_ev_link_dest_get_zoom ev_link_dest_get_zoom;

// evince.document.MappingList

alias c_ev_mapping_list_get_type ev_mapping_list_get_type;
alias c_ev_mapping_list_new ev_mapping_list_new;
alias c_ev_mapping_list_find ev_mapping_list_find;
alias c_ev_mapping_list_find_custom ev_mapping_list_find_custom;
alias c_ev_mapping_list_get ev_mapping_list_get;
alias c_ev_mapping_list_get_data ev_mapping_list_get_data;
alias c_ev_mapping_list_get_list ev_mapping_list_get_list;
alias c_ev_mapping_list_get_page ev_mapping_list_get_page;
alias c_ev_mapping_list_length ev_mapping_list_length;
alias c_ev_mapping_list_nth ev_mapping_list_nth;
alias c_ev_mapping_list_ref ev_mapping_list_ref;
alias c_ev_mapping_list_remove ev_mapping_list_remove;
alias c_ev_mapping_list_unref ev_mapping_list_unref;

// evince.document.Media

alias c_ev_media_get_type ev_media_get_type;
alias c_ev_media_new_for_uri ev_media_new_for_uri;
alias c_ev_media_get_page_index ev_media_get_page_index;
alias c_ev_media_get_show_controls ev_media_get_show_controls;
alias c_ev_media_get_uri ev_media_get_uri;
alias c_ev_media_set_show_controls ev_media_set_show_controls;

// evince.document.Page

alias c_ev_page_get_type ev_page_get_type;
alias c_ev_page_new ev_page_new;

// evince.document.Rectangle

alias c_ev_rectangle_get_type ev_rectangle_get_type;
alias c_ev_rectangle_new ev_rectangle_new;
alias c_ev_rectangle_copy ev_rectangle_copy;
alias c_ev_rectangle_free ev_rectangle_free;

// evince.document.RenderContext

alias c_ev_render_context_get_type ev_render_context_get_type;
alias c_ev_render_context_new ev_render_context_new;
alias c_ev_render_context_compute_scaled_size ev_render_context_compute_scaled_size;
alias c_ev_render_context_compute_scales ev_render_context_compute_scales;
alias c_ev_render_context_compute_transformed_size ev_render_context_compute_transformed_size;
alias c_ev_render_context_set_page ev_render_context_set_page;
alias c_ev_render_context_set_rotation ev_render_context_set_rotation;
alias c_ev_render_context_set_scale ev_render_context_set_scale;
alias c_ev_render_context_set_target_size ev_render_context_set_target_size;

// evince.document.Selection

alias c_ev_selection_get_type ev_selection_get_type;
alias c_ev_selection_get_selected_text ev_selection_get_selected_text;
alias c_ev_selection_get_selection_region ev_selection_get_selection_region;
alias c_ev_selection_render_selection ev_selection_render_selection;

// evince.document.SourceLink

alias c_ev_source_link_get_type ev_source_link_get_type;
alias c_ev_source_link_new ev_source_link_new;
alias c_ev_source_link_copy ev_source_link_copy;
alias c_ev_source_link_free ev_source_link_free;

// evince.document.TransitionEffect

alias c_ev_transition_effect_get_type ev_transition_effect_get_type;
alias c_ev_transition_effect_new ev_transition_effect_new;

// evince.document.EvinceDocument

alias c_ev_backends_manager_get_all_types_info ev_backends_manager_get_all_types_info;
alias c_ev_backends_manager_get_document ev_backends_manager_get_document;
alias c_ev_backends_manager_get_document_module_name ev_backends_manager_get_document_module_name;
alias c_ev_backends_manager_get_document_type_info ev_backends_manager_get_document_type_info;
alias c_ev_file_compress ev_file_compress;
alias c_ev_file_copy_metadata ev_file_copy_metadata;
alias c_ev_file_get_mime_type ev_file_get_mime_type;
alias c_ev_file_is_temp ev_file_is_temp;
alias c_ev_file_uncompress ev_file_uncompress;
alias c_ev_mkdtemp ev_mkdtemp;
alias c_ev_mkstemp ev_mkstemp;
alias c_ev_mkstemp_file ev_mkstemp_file;
alias c_ev_get_locale_dir ev_get_locale_dir;
alias c_ev_init ev_init;
alias c_ev_rect_cmp ev_rect_cmp;
alias c_ev_shutdown ev_shutdown;
alias c_ev_tmp_file_unlink ev_tmp_file_unlink;
alias c_ev_tmp_filename_unlink ev_tmp_filename_unlink;
alias c_ev_tmp_uri_unlink ev_tmp_uri_unlink;
alias c_ev_xfer_uri_simple ev_xfer_uri_simple;
