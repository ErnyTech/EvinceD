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


module evince.view.c.functions;

import std.stdio;
import evince.view.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_EVINCEVIEW = ["libevdocument3-4.dll;evdocument3.dll;evdocument3.dll", "libevview3-3.dll;evview3.dll;evview3.dll"];
else version (OSX)
	static immutable LIBRARY_EVINCEVIEW = ["libevdocument3.4.dylib", "libevview3.3.dylib"];
else
	static immutable LIBRARY_EVINCEVIEW = ["libevdocument3.so.4", "libevview3.so.3"];

shared static this()
{
	// evince.view.DocumentModel

	Linker.link(ev_document_model_get_type, "ev_document_model_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_new, "ev_document_model_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_new_with_document, "ev_document_model_new_with_document", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_continuous, "ev_document_model_get_continuous", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_document, "ev_document_model_get_document", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_dual_page, "ev_document_model_get_dual_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_dual_page_odd_pages_left, "ev_document_model_get_dual_page_odd_pages_left", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_fullscreen, "ev_document_model_get_fullscreen", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_inverted_colors, "ev_document_model_get_inverted_colors", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_max_scale, "ev_document_model_get_max_scale", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_min_scale, "ev_document_model_get_min_scale", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_page, "ev_document_model_get_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_page_layout, "ev_document_model_get_page_layout", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_rotation, "ev_document_model_get_rotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_rtl, "ev_document_model_get_rtl", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_scale, "ev_document_model_get_scale", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_get_sizing_mode, "ev_document_model_get_sizing_mode", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_continuous, "ev_document_model_set_continuous", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_document, "ev_document_model_set_document", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_dual_page, "ev_document_model_set_dual_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_dual_page_odd_pages_left, "ev_document_model_set_dual_page_odd_pages_left", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_fullscreen, "ev_document_model_set_fullscreen", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_inverted_colors, "ev_document_model_set_inverted_colors", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_max_scale, "ev_document_model_set_max_scale", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_min_scale, "ev_document_model_set_min_scale", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_page, "ev_document_model_set_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_page_by_label, "ev_document_model_set_page_by_label", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_page_layout, "ev_document_model_set_page_layout", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_rotation, "ev_document_model_set_rotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_rtl, "ev_document_model_set_rtl", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_scale, "ev_document_model_set_scale", LIBRARY_EVINCEVIEW);
	Linker.link(ev_document_model_set_sizing_mode, "ev_document_model_set_sizing_mode", LIBRARY_EVINCEVIEW);

	// evince.view.Job

	Linker.link(ev_job_get_type, "ev_job_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_scheduler_get_running_thread_job, "ev_job_scheduler_get_running_thread_job", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_cancel, "ev_job_cancel", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_failed, "ev_job_failed", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_failed_from_error, "ev_job_failed_from_error", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_get_run_mode, "ev_job_get_run_mode", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_is_failed, "ev_job_is_failed", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_is_finished, "ev_job_is_finished", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_run, "ev_job_run", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_scheduler_push_job, "ev_job_scheduler_push_job", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_scheduler_update_job, "ev_job_scheduler_update_job", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_set_run_mode, "ev_job_set_run_mode", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_succeeded, "ev_job_succeeded", LIBRARY_EVINCEVIEW);

	// evince.view.JobAnnots

	Linker.link(ev_job_annots_get_type, "ev_job_annots_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_annots_new, "ev_job_annots_new", LIBRARY_EVINCEVIEW);

	// evince.view.JobAttachments

	Linker.link(ev_job_attachments_get_type, "ev_job_attachments_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_attachments_new, "ev_job_attachments_new", LIBRARY_EVINCEVIEW);

	// evince.view.JobExport

	Linker.link(ev_job_export_get_type, "ev_job_export_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_export_new, "ev_job_export_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_export_set_page, "ev_job_export_set_page", LIBRARY_EVINCEVIEW);

	// evince.view.JobFind

	Linker.link(ev_job_find_get_type, "ev_job_find_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_new, "ev_job_find_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_get_n_results, "ev_job_find_get_n_results", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_get_options, "ev_job_find_get_options", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_get_progress, "ev_job_find_get_progress", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_get_results, "ev_job_find_get_results", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_has_results, "ev_job_find_has_results", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_find_set_options, "ev_job_find_set_options", LIBRARY_EVINCEVIEW);

	// evince.view.JobFonts

	Linker.link(ev_job_fonts_get_type, "ev_job_fonts_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_fonts_new, "ev_job_fonts_new", LIBRARY_EVINCEVIEW);

	// evince.view.JobLayers

	Linker.link(ev_job_layers_get_type, "ev_job_layers_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_layers_new, "ev_job_layers_new", LIBRARY_EVINCEVIEW);

	// evince.view.JobLinks

	Linker.link(ev_job_links_get_type, "ev_job_links_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_links_new, "ev_job_links_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_links_get_model, "ev_job_links_get_model", LIBRARY_EVINCEVIEW);

	// evince.view.JobLoad

	Linker.link(ev_job_load_get_type, "ev_job_load_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_new, "ev_job_load_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_set_password, "ev_job_load_set_password", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_set_uri, "ev_job_load_set_uri", LIBRARY_EVINCEVIEW);

	// evince.view.JobLoadGFile

	Linker.link(ev_job_load_gfile_get_type, "ev_job_load_gfile_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_gfile_new, "ev_job_load_gfile_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_gfile_set_gfile, "ev_job_load_gfile_set_gfile", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_gfile_set_load_flags, "ev_job_load_gfile_set_load_flags", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_gfile_set_password, "ev_job_load_gfile_set_password", LIBRARY_EVINCEVIEW);

	// evince.view.JobLoadStream

	Linker.link(ev_job_load_stream_get_type, "ev_job_load_stream_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_stream_new, "ev_job_load_stream_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_stream_set_load_flags, "ev_job_load_stream_set_load_flags", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_stream_set_password, "ev_job_load_stream_set_password", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_load_stream_set_stream, "ev_job_load_stream_set_stream", LIBRARY_EVINCEVIEW);

	// evince.view.JobPageData

	Linker.link(ev_job_page_data_get_type, "ev_job_page_data_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_page_data_new, "ev_job_page_data_new", LIBRARY_EVINCEVIEW);

	// evince.view.JobPrint

	Linker.link(ev_job_print_get_type, "ev_job_print_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_print_new, "ev_job_print_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_print_set_cairo, "ev_job_print_set_cairo", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_print_set_page, "ev_job_print_set_page", LIBRARY_EVINCEVIEW);

	// evince.view.JobRender

	Linker.link(ev_job_render_get_type, "ev_job_render_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_render_new, "ev_job_render_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_render_set_selection_info, "ev_job_render_set_selection_info", LIBRARY_EVINCEVIEW);

	// evince.view.JobSave

	Linker.link(ev_job_save_get_type, "ev_job_save_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_save_new, "ev_job_save_new", LIBRARY_EVINCEVIEW);

	// evince.view.JobThumbnail

	Linker.link(ev_job_thumbnail_get_type, "ev_job_thumbnail_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_thumbnail_new, "ev_job_thumbnail_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_thumbnail_new_with_target_size, "ev_job_thumbnail_new_with_target_size", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_thumbnail_set_has_frame, "ev_job_thumbnail_set_has_frame", LIBRARY_EVINCEVIEW);
	Linker.link(ev_job_thumbnail_set_output_format, "ev_job_thumbnail_set_output_format", LIBRARY_EVINCEVIEW);

	// evince.view.PrintOperation

	Linker.link(ev_print_operation_get_type, "ev_print_operation_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_new, "ev_print_operation_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_exists_for_document, "ev_print_operation_exists_for_document", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_cancel, "ev_print_operation_cancel", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_default_page_setup, "ev_print_operation_get_default_page_setup", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_embed_page_setup, "ev_print_operation_get_embed_page_setup", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_error, "ev_print_operation_get_error", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_job_name, "ev_print_operation_get_job_name", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_print_settings, "ev_print_operation_get_print_settings", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_progress, "ev_print_operation_get_progress", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_get_status, "ev_print_operation_get_status", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_run, "ev_print_operation_run", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_set_current_page, "ev_print_operation_set_current_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_set_default_page_setup, "ev_print_operation_set_default_page_setup", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_set_embed_page_setup, "ev_print_operation_set_embed_page_setup", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_set_job_name, "ev_print_operation_set_job_name", LIBRARY_EVINCEVIEW);
	Linker.link(ev_print_operation_set_print_settings, "ev_print_operation_set_print_settings", LIBRARY_EVINCEVIEW);

	// evince.view.View

	Linker.link(ev_view_get_type, "ev_view_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_new, "ev_view_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_add_text_markup_annotation_for_selected_text, "ev_view_add_text_markup_annotation_for_selected_text", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_autoscroll_start, "ev_view_autoscroll_start", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_autoscroll_stop, "ev_view_autoscroll_stop", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_begin_add_annotation, "ev_view_begin_add_annotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_can_zoom_in, "ev_view_can_zoom_in", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_can_zoom_out, "ev_view_can_zoom_out", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_cancel_add_annotation, "ev_view_cancel_add_annotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_copy, "ev_view_copy", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_copy_link_address, "ev_view_copy_link_address", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_cancel, "ev_view_find_cancel", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_changed, "ev_view_find_changed", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_next, "ev_view_find_next", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_previous, "ev_view_find_previous", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_restart, "ev_view_find_restart", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_search_changed, "ev_view_find_search_changed", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_set_highlight_search, "ev_view_find_set_highlight_search", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_set_result, "ev_view_find_set_result", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_find_started, "ev_view_find_started", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_focus_annotation, "ev_view_focus_annotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_get_allow_links_change_zoom, "ev_view_get_allow_links_change_zoom", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_get_enable_spellchecking, "ev_view_get_enable_spellchecking", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_get_has_selection, "ev_view_get_has_selection", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_get_page_extents, "ev_view_get_page_extents", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_get_page_extents_for_border, "ev_view_get_page_extents_for_border", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_get_selected_text, "ev_view_get_selected_text", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_handle_link, "ev_view_handle_link", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_hide_cursor, "ev_view_hide_cursor", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_highlight_forward_search, "ev_view_highlight_forward_search", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_is_caret_navigation_enabled, "ev_view_is_caret_navigation_enabled", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_is_loading, "ev_view_is_loading", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_next_page, "ev_view_next_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_previous_page, "ev_view_previous_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_reload, "ev_view_reload", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_remove_annotation, "ev_view_remove_annotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_scroll, "ev_view_scroll", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_select_all, "ev_view_select_all", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_allow_links_change_zoom, "ev_view_set_allow_links_change_zoom", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_caret_cursor_position, "ev_view_set_caret_cursor_position", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_caret_navigation_enabled, "ev_view_set_caret_navigation_enabled", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_enable_spellchecking, "ev_view_set_enable_spellchecking", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_loading, "ev_view_set_loading", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_model, "ev_view_set_model", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_set_page_cache_size, "ev_view_set_page_cache_size", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_show_cursor, "ev_view_show_cursor", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_supports_caret_navigation, "ev_view_supports_caret_navigation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_zoom_in, "ev_view_zoom_in", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_zoom_out, "ev_view_zoom_out", LIBRARY_EVINCEVIEW);

	// evince.view.ViewPresentation

	Linker.link(ev_view_presentation_get_type, "ev_view_presentation_get_type", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_presentation_new, "ev_view_presentation_new", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_presentation_get_current_page, "ev_view_presentation_get_current_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_presentation_get_rotation, "ev_view_presentation_get_rotation", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_presentation_next_page, "ev_view_presentation_next_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_presentation_previous_page, "ev_view_presentation_previous_page", LIBRARY_EVINCEVIEW);
	Linker.link(ev_view_presentation_set_rotation, "ev_view_presentation_set_rotation", LIBRARY_EVINCEVIEW);

	// evince.view.EvinceView

	Linker.link(ev_stock_icons_init, "ev_stock_icons_init", LIBRARY_EVINCEVIEW);
	Linker.link(ev_stock_icons_set_screen, "ev_stock_icons_set_screen", LIBRARY_EVINCEVIEW);
	Linker.link(ev_stock_icons_shutdown, "ev_stock_icons_shutdown", LIBRARY_EVINCEVIEW);
}

__gshared extern(C)
{

	// evince.view.DocumentModel

	GType function() c_ev_document_model_get_type;
	EvDocumentModel* function() c_ev_document_model_new;
	EvDocumentModel* function(EvDocument* document) c_ev_document_model_new_with_document;
	int function(EvDocumentModel* model) c_ev_document_model_get_continuous;
	EvDocument* function(EvDocumentModel* model) c_ev_document_model_get_document;
	int function(EvDocumentModel* model) c_ev_document_model_get_dual_page;
	int function(EvDocumentModel* model) c_ev_document_model_get_dual_page_odd_pages_left;
	int function(EvDocumentModel* model) c_ev_document_model_get_fullscreen;
	int function(EvDocumentModel* model) c_ev_document_model_get_inverted_colors;
	double function(EvDocumentModel* model) c_ev_document_model_get_max_scale;
	double function(EvDocumentModel* model) c_ev_document_model_get_min_scale;
	int function(EvDocumentModel* model) c_ev_document_model_get_page;
	EvPageLayout function(EvDocumentModel* model) c_ev_document_model_get_page_layout;
	int function(EvDocumentModel* model) c_ev_document_model_get_rotation;
	int function(EvDocumentModel* model) c_ev_document_model_get_rtl;
	double function(EvDocumentModel* model) c_ev_document_model_get_scale;
	EvSizingMode function(EvDocumentModel* model) c_ev_document_model_get_sizing_mode;
	void function(EvDocumentModel* model, int continuous) c_ev_document_model_set_continuous;
	void function(EvDocumentModel* model, EvDocument* document) c_ev_document_model_set_document;
	void function(EvDocumentModel* model, int dualPage) c_ev_document_model_set_dual_page;
	void function(EvDocumentModel* model, int oddLeft) c_ev_document_model_set_dual_page_odd_pages_left;
	void function(EvDocumentModel* model, int fullscreen) c_ev_document_model_set_fullscreen;
	void function(EvDocumentModel* model, int invertedColors) c_ev_document_model_set_inverted_colors;
	void function(EvDocumentModel* model, double maxScale) c_ev_document_model_set_max_scale;
	void function(EvDocumentModel* model, double minScale) c_ev_document_model_set_min_scale;
	void function(EvDocumentModel* model, int page) c_ev_document_model_set_page;
	void function(EvDocumentModel* model, const(char)* pageLabel) c_ev_document_model_set_page_by_label;
	void function(EvDocumentModel* model, EvPageLayout layout) c_ev_document_model_set_page_layout;
	void function(EvDocumentModel* model, int rotation) c_ev_document_model_set_rotation;
	void function(EvDocumentModel* model, int rtl) c_ev_document_model_set_rtl;
	void function(EvDocumentModel* model, double scale) c_ev_document_model_set_scale;
	void function(EvDocumentModel* model, EvSizingMode mode) c_ev_document_model_set_sizing_mode;

	// evince.view.Job

	GType function() c_ev_job_get_type;
	EvJob* function() c_ev_job_scheduler_get_running_thread_job;
	void function(EvJob* job) c_ev_job_cancel;
	void function(EvJob* job, GQuark domain, int code, const(char)* format, ... ) c_ev_job_failed;
	void function(EvJob* job, GError* error) c_ev_job_failed_from_error;
	EvJobRunMode function(EvJob* job) c_ev_job_get_run_mode;
	int function(EvJob* job) c_ev_job_is_failed;
	int function(EvJob* job) c_ev_job_is_finished;
	int function(EvJob* job) c_ev_job_run;
	void function(EvJob* job, EvJobPriority priority) c_ev_job_scheduler_push_job;
	void function(EvJob* job, EvJobPriority priority) c_ev_job_scheduler_update_job;
	void function(EvJob* job, EvJobRunMode runMode) c_ev_job_set_run_mode;
	void function(EvJob* job) c_ev_job_succeeded;

	// evince.view.JobAnnots

	GType function() c_ev_job_annots_get_type;
	EvJob* function(EvDocument* document) c_ev_job_annots_new;

	// evince.view.JobAttachments

	GType function() c_ev_job_attachments_get_type;
	EvJob* function(EvDocument* document) c_ev_job_attachments_new;

	// evince.view.JobExport

	GType function() c_ev_job_export_get_type;
	EvJob* function(EvDocument* document) c_ev_job_export_new;
	void function(EvJobExport* job, int page) c_ev_job_export_set_page;

	// evince.view.JobFind

	GType function() c_ev_job_find_get_type;
	EvJob* function(EvDocument* document, int startPage, int nPages, const(char)* text, int caseSensitive) c_ev_job_find_new;
	int function(EvJobFind* job, int pages) c_ev_job_find_get_n_results;
	EvFindOptions function(EvJobFind* job) c_ev_job_find_get_options;
	double function(EvJobFind* job) c_ev_job_find_get_progress;
	GList** function(EvJobFind* job) c_ev_job_find_get_results;
	int function(EvJobFind* job) c_ev_job_find_has_results;
	void function(EvJobFind* job, EvFindOptions options) c_ev_job_find_set_options;

	// evince.view.JobFonts

	GType function() c_ev_job_fonts_get_type;
	EvJob* function(EvDocument* document) c_ev_job_fonts_new;

	// evince.view.JobLayers

	GType function() c_ev_job_layers_get_type;
	EvJob* function(EvDocument* document) c_ev_job_layers_new;

	// evince.view.JobLinks

	GType function() c_ev_job_links_get_type;
	EvJob* function(EvDocument* document) c_ev_job_links_new;
	GtkTreeModel* function(EvJobLinks* job) c_ev_job_links_get_model;

	// evince.view.JobLoad

	GType function() c_ev_job_load_get_type;
	EvJob* function(const(char)* uri) c_ev_job_load_new;
	void function(EvJobLoad* job, const(char)* password) c_ev_job_load_set_password;
	void function(EvJobLoad* load, const(char)* uri) c_ev_job_load_set_uri;

	// evince.view.JobLoadGFile

	GType function() c_ev_job_load_gfile_get_type;
	EvJob* function(GFile* gfile, EvDocumentLoadFlags flags) c_ev_job_load_gfile_new;
	void function(EvJobLoadGFile* job, GFile* gfile) c_ev_job_load_gfile_set_gfile;
	void function(EvJobLoadGFile* job, EvDocumentLoadFlags flags) c_ev_job_load_gfile_set_load_flags;
	void function(EvJobLoadGFile* job, const(char)* password) c_ev_job_load_gfile_set_password;

	// evince.view.JobLoadStream

	GType function() c_ev_job_load_stream_get_type;
	EvJob* function(GInputStream* stream, EvDocumentLoadFlags flags) c_ev_job_load_stream_new;
	void function(EvJobLoadStream* job, EvDocumentLoadFlags flags) c_ev_job_load_stream_set_load_flags;
	void function(EvJobLoadStream* job, const(char)* password) c_ev_job_load_stream_set_password;
	void function(EvJobLoadStream* job, GInputStream* stream) c_ev_job_load_stream_set_stream;

	// evince.view.JobPageData

	GType function() c_ev_job_page_data_get_type;
	EvJob* function(EvDocument* document, int page, EvJobPageDataFlags flags) c_ev_job_page_data_new;

	// evince.view.JobPrint

	GType function() c_ev_job_print_get_type;
	EvJob* function(EvDocument* document) c_ev_job_print_new;
	void function(EvJobPrint* job, cairo_t* cr) c_ev_job_print_set_cairo;
	void function(EvJobPrint* job, int page) c_ev_job_print_set_page;

	// evince.view.JobRender

	GType function() c_ev_job_render_get_type;
	EvJob* function(EvDocument* document, int page, int rotation, double scale, int width, int height) c_ev_job_render_new;
	void function(EvJobRender* job, EvRectangle* selectionPoints, EvSelectionStyle selectionStyle, GdkColor* text, GdkColor* base) c_ev_job_render_set_selection_info;

	// evince.view.JobSave

	GType function() c_ev_job_save_get_type;
	EvJob* function(EvDocument* document, const(char)* uri, const(char)* documentUri) c_ev_job_save_new;

	// evince.view.JobThumbnail

	GType function() c_ev_job_thumbnail_get_type;
	EvJob* function(EvDocument* document, int page, int rotation, double scale) c_ev_job_thumbnail_new;
	EvJob* function(EvDocument* document, int page, int rotation, int targetWidth, int targetHeight) c_ev_job_thumbnail_new_with_target_size;
	void function(EvJobThumbnail* job, int hasFrame) c_ev_job_thumbnail_set_has_frame;
	void function(EvJobThumbnail* job, EvJobThumbnailFormat format) c_ev_job_thumbnail_set_output_format;

	// evince.view.PrintOperation

	GType function() c_ev_print_operation_get_type;
	EvPrintOperation* function(EvDocument* document) c_ev_print_operation_new;
	int function(EvDocument* document) c_ev_print_operation_exists_for_document;
	void function(EvPrintOperation* op) c_ev_print_operation_cancel;
	GtkPageSetup* function(EvPrintOperation* op) c_ev_print_operation_get_default_page_setup;
	int function(EvPrintOperation* op) c_ev_print_operation_get_embed_page_setup;
	void function(EvPrintOperation* op, GError** err) c_ev_print_operation_get_error;
	const(char)* function(EvPrintOperation* op) c_ev_print_operation_get_job_name;
	GtkPrintSettings* function(EvPrintOperation* op) c_ev_print_operation_get_print_settings;
	double function(EvPrintOperation* op) c_ev_print_operation_get_progress;
	const(char)* function(EvPrintOperation* op) c_ev_print_operation_get_status;
	void function(EvPrintOperation* op, GtkWindow* parent) c_ev_print_operation_run;
	void function(EvPrintOperation* op, int currentPage) c_ev_print_operation_set_current_page;
	void function(EvPrintOperation* op, GtkPageSetup* pageSetup) c_ev_print_operation_set_default_page_setup;
	void function(EvPrintOperation* op, int embed) c_ev_print_operation_set_embed_page_setup;
	void function(EvPrintOperation* op, const(char)* jobName) c_ev_print_operation_set_job_name;
	void function(EvPrintOperation* op, GtkPrintSettings* printSettings) c_ev_print_operation_set_print_settings;

	// evince.view.View

	GType function() c_ev_view_get_type;
	GtkWidget* function() c_ev_view_new;
	int function(EvView* view) c_ev_view_add_text_markup_annotation_for_selected_text;
	void function(EvView* view) c_ev_view_autoscroll_start;
	void function(EvView* view) c_ev_view_autoscroll_stop;
	void function(EvView* view, EvAnnotationType annotType) c_ev_view_begin_add_annotation;
	int function(EvView* view) c_ev_view_can_zoom_in;
	int function(EvView* view) c_ev_view_can_zoom_out;
	void function(EvView* view) c_ev_view_cancel_add_annotation;
	void function(EvView* view) c_ev_view_copy;
	void function(EvView* view, EvLinkAction* action) c_ev_view_copy_link_address;
	void function(EvView* view) c_ev_view_find_cancel;
	void function(EvView* view, GList** results, int page) c_ev_view_find_changed;
	void function(EvView* view) c_ev_view_find_next;
	void function(EvView* view) c_ev_view_find_previous;
	void function(EvView* view, int page) c_ev_view_find_restart;
	void function(EvView* view) c_ev_view_find_search_changed;
	void function(EvView* view, int value) c_ev_view_find_set_highlight_search;
	void function(EvView* view, int page, int result) c_ev_view_find_set_result;
	void function(EvView* view, EvJobFind* job) c_ev_view_find_started;
	void function(EvView* view, EvMapping* annotMapping) c_ev_view_focus_annotation;
	int function(EvView* view) c_ev_view_get_allow_links_change_zoom;
	int function(EvView* view) c_ev_view_get_enable_spellchecking;
	int function(EvView* view) c_ev_view_get_has_selection;
	int function(EvView* view, int page, GdkRectangle* pageArea, GtkBorder* border) c_ev_view_get_page_extents;
	int function(EvView* view, int page, GtkBorder* border, GdkRectangle* pageArea) c_ev_view_get_page_extents_for_border;
	char* function(EvView* view) c_ev_view_get_selected_text;
	void function(EvView* view, EvLink* link) c_ev_view_handle_link;
	void function(EvView* view) c_ev_view_hide_cursor;
	void function(EvView* view, EvSourceLink* link) c_ev_view_highlight_forward_search;
	int function(EvView* view) c_ev_view_is_caret_navigation_enabled;
	int function(EvView* view) c_ev_view_is_loading;
	int function(EvView* view) c_ev_view_next_page;
	int function(EvView* view) c_ev_view_previous_page;
	void function(EvView* view) c_ev_view_reload;
	void function(EvView* view, EvAnnotation* annot) c_ev_view_remove_annotation;
	void function(EvView* view, GtkScrollType scroll, int horizontal) c_ev_view_scroll;
	void function(EvView* view) c_ev_view_select_all;
	void function(EvView* view, int allowed) c_ev_view_set_allow_links_change_zoom;
	void function(EvView* view, uint page, uint offset) c_ev_view_set_caret_cursor_position;
	void function(EvView* view, int enabled) c_ev_view_set_caret_navigation_enabled;
	void function(EvView* view, int spellcheck) c_ev_view_set_enable_spellchecking;
	void function(EvView* view, int loading) c_ev_view_set_loading;
	void function(EvView* view, EvDocumentModel* model) c_ev_view_set_model;
	void function(EvView* view, size_t cacheSize) c_ev_view_set_page_cache_size;
	void function(EvView* view) c_ev_view_show_cursor;
	int function(EvView* view) c_ev_view_supports_caret_navigation;
	void function(EvView* view) c_ev_view_zoom_in;
	void function(EvView* view) c_ev_view_zoom_out;

	// evince.view.ViewPresentation

	GType function() c_ev_view_presentation_get_type;
	GtkWidget* function(EvDocument* document, uint currentPage, uint rotation, int invertedColors) c_ev_view_presentation_new;
	uint function(EvViewPresentation* pview) c_ev_view_presentation_get_current_page;
	uint function(EvViewPresentation* pview) c_ev_view_presentation_get_rotation;
	void function(EvViewPresentation* pview) c_ev_view_presentation_next_page;
	void function(EvViewPresentation* pview) c_ev_view_presentation_previous_page;
	void function(EvViewPresentation* pview, int rotation) c_ev_view_presentation_set_rotation;

	// evince.view.EvinceView

	void function() c_ev_stock_icons_init;
	void function(GdkScreen* screen) c_ev_stock_icons_set_screen;
	void function() c_ev_stock_icons_shutdown;
}


// evince.view.DocumentModel

alias c_ev_document_model_get_type ev_document_model_get_type;
alias c_ev_document_model_new ev_document_model_new;
alias c_ev_document_model_new_with_document ev_document_model_new_with_document;
alias c_ev_document_model_get_continuous ev_document_model_get_continuous;
alias c_ev_document_model_get_document ev_document_model_get_document;
alias c_ev_document_model_get_dual_page ev_document_model_get_dual_page;
alias c_ev_document_model_get_dual_page_odd_pages_left ev_document_model_get_dual_page_odd_pages_left;
alias c_ev_document_model_get_fullscreen ev_document_model_get_fullscreen;
alias c_ev_document_model_get_inverted_colors ev_document_model_get_inverted_colors;
alias c_ev_document_model_get_max_scale ev_document_model_get_max_scale;
alias c_ev_document_model_get_min_scale ev_document_model_get_min_scale;
alias c_ev_document_model_get_page ev_document_model_get_page;
alias c_ev_document_model_get_page_layout ev_document_model_get_page_layout;
alias c_ev_document_model_get_rotation ev_document_model_get_rotation;
alias c_ev_document_model_get_rtl ev_document_model_get_rtl;
alias c_ev_document_model_get_scale ev_document_model_get_scale;
alias c_ev_document_model_get_sizing_mode ev_document_model_get_sizing_mode;
alias c_ev_document_model_set_continuous ev_document_model_set_continuous;
alias c_ev_document_model_set_document ev_document_model_set_document;
alias c_ev_document_model_set_dual_page ev_document_model_set_dual_page;
alias c_ev_document_model_set_dual_page_odd_pages_left ev_document_model_set_dual_page_odd_pages_left;
alias c_ev_document_model_set_fullscreen ev_document_model_set_fullscreen;
alias c_ev_document_model_set_inverted_colors ev_document_model_set_inverted_colors;
alias c_ev_document_model_set_max_scale ev_document_model_set_max_scale;
alias c_ev_document_model_set_min_scale ev_document_model_set_min_scale;
alias c_ev_document_model_set_page ev_document_model_set_page;
alias c_ev_document_model_set_page_by_label ev_document_model_set_page_by_label;
alias c_ev_document_model_set_page_layout ev_document_model_set_page_layout;
alias c_ev_document_model_set_rotation ev_document_model_set_rotation;
alias c_ev_document_model_set_rtl ev_document_model_set_rtl;
alias c_ev_document_model_set_scale ev_document_model_set_scale;
alias c_ev_document_model_set_sizing_mode ev_document_model_set_sizing_mode;

// evince.view.Job

alias c_ev_job_get_type ev_job_get_type;
alias c_ev_job_scheduler_get_running_thread_job ev_job_scheduler_get_running_thread_job;
alias c_ev_job_cancel ev_job_cancel;
alias c_ev_job_failed ev_job_failed;
alias c_ev_job_failed_from_error ev_job_failed_from_error;
alias c_ev_job_get_run_mode ev_job_get_run_mode;
alias c_ev_job_is_failed ev_job_is_failed;
alias c_ev_job_is_finished ev_job_is_finished;
alias c_ev_job_run ev_job_run;
alias c_ev_job_scheduler_push_job ev_job_scheduler_push_job;
alias c_ev_job_scheduler_update_job ev_job_scheduler_update_job;
alias c_ev_job_set_run_mode ev_job_set_run_mode;
alias c_ev_job_succeeded ev_job_succeeded;

// evince.view.JobAnnots

alias c_ev_job_annots_get_type ev_job_annots_get_type;
alias c_ev_job_annots_new ev_job_annots_new;

// evince.view.JobAttachments

alias c_ev_job_attachments_get_type ev_job_attachments_get_type;
alias c_ev_job_attachments_new ev_job_attachments_new;

// evince.view.JobExport

alias c_ev_job_export_get_type ev_job_export_get_type;
alias c_ev_job_export_new ev_job_export_new;
alias c_ev_job_export_set_page ev_job_export_set_page;

// evince.view.JobFind

alias c_ev_job_find_get_type ev_job_find_get_type;
alias c_ev_job_find_new ev_job_find_new;
alias c_ev_job_find_get_n_results ev_job_find_get_n_results;
alias c_ev_job_find_get_options ev_job_find_get_options;
alias c_ev_job_find_get_progress ev_job_find_get_progress;
alias c_ev_job_find_get_results ev_job_find_get_results;
alias c_ev_job_find_has_results ev_job_find_has_results;
alias c_ev_job_find_set_options ev_job_find_set_options;

// evince.view.JobFonts

alias c_ev_job_fonts_get_type ev_job_fonts_get_type;
alias c_ev_job_fonts_new ev_job_fonts_new;

// evince.view.JobLayers

alias c_ev_job_layers_get_type ev_job_layers_get_type;
alias c_ev_job_layers_new ev_job_layers_new;

// evince.view.JobLinks

alias c_ev_job_links_get_type ev_job_links_get_type;
alias c_ev_job_links_new ev_job_links_new;
alias c_ev_job_links_get_model ev_job_links_get_model;

// evince.view.JobLoad

alias c_ev_job_load_get_type ev_job_load_get_type;
alias c_ev_job_load_new ev_job_load_new;
alias c_ev_job_load_set_password ev_job_load_set_password;
alias c_ev_job_load_set_uri ev_job_load_set_uri;

// evince.view.JobLoadGFile

alias c_ev_job_load_gfile_get_type ev_job_load_gfile_get_type;
alias c_ev_job_load_gfile_new ev_job_load_gfile_new;
alias c_ev_job_load_gfile_set_gfile ev_job_load_gfile_set_gfile;
alias c_ev_job_load_gfile_set_load_flags ev_job_load_gfile_set_load_flags;
alias c_ev_job_load_gfile_set_password ev_job_load_gfile_set_password;

// evince.view.JobLoadStream

alias c_ev_job_load_stream_get_type ev_job_load_stream_get_type;
alias c_ev_job_load_stream_new ev_job_load_stream_new;
alias c_ev_job_load_stream_set_load_flags ev_job_load_stream_set_load_flags;
alias c_ev_job_load_stream_set_password ev_job_load_stream_set_password;
alias c_ev_job_load_stream_set_stream ev_job_load_stream_set_stream;

// evince.view.JobPageData

alias c_ev_job_page_data_get_type ev_job_page_data_get_type;
alias c_ev_job_page_data_new ev_job_page_data_new;

// evince.view.JobPrint

alias c_ev_job_print_get_type ev_job_print_get_type;
alias c_ev_job_print_new ev_job_print_new;
alias c_ev_job_print_set_cairo ev_job_print_set_cairo;
alias c_ev_job_print_set_page ev_job_print_set_page;

// evince.view.JobRender

alias c_ev_job_render_get_type ev_job_render_get_type;
alias c_ev_job_render_new ev_job_render_new;
alias c_ev_job_render_set_selection_info ev_job_render_set_selection_info;

// evince.view.JobSave

alias c_ev_job_save_get_type ev_job_save_get_type;
alias c_ev_job_save_new ev_job_save_new;

// evince.view.JobThumbnail

alias c_ev_job_thumbnail_get_type ev_job_thumbnail_get_type;
alias c_ev_job_thumbnail_new ev_job_thumbnail_new;
alias c_ev_job_thumbnail_new_with_target_size ev_job_thumbnail_new_with_target_size;
alias c_ev_job_thumbnail_set_has_frame ev_job_thumbnail_set_has_frame;
alias c_ev_job_thumbnail_set_output_format ev_job_thumbnail_set_output_format;

// evince.view.PrintOperation

alias c_ev_print_operation_get_type ev_print_operation_get_type;
alias c_ev_print_operation_new ev_print_operation_new;
alias c_ev_print_operation_exists_for_document ev_print_operation_exists_for_document;
alias c_ev_print_operation_cancel ev_print_operation_cancel;
alias c_ev_print_operation_get_default_page_setup ev_print_operation_get_default_page_setup;
alias c_ev_print_operation_get_embed_page_setup ev_print_operation_get_embed_page_setup;
alias c_ev_print_operation_get_error ev_print_operation_get_error;
alias c_ev_print_operation_get_job_name ev_print_operation_get_job_name;
alias c_ev_print_operation_get_print_settings ev_print_operation_get_print_settings;
alias c_ev_print_operation_get_progress ev_print_operation_get_progress;
alias c_ev_print_operation_get_status ev_print_operation_get_status;
alias c_ev_print_operation_run ev_print_operation_run;
alias c_ev_print_operation_set_current_page ev_print_operation_set_current_page;
alias c_ev_print_operation_set_default_page_setup ev_print_operation_set_default_page_setup;
alias c_ev_print_operation_set_embed_page_setup ev_print_operation_set_embed_page_setup;
alias c_ev_print_operation_set_job_name ev_print_operation_set_job_name;
alias c_ev_print_operation_set_print_settings ev_print_operation_set_print_settings;

// evince.view.View

alias c_ev_view_get_type ev_view_get_type;
alias c_ev_view_new ev_view_new;
alias c_ev_view_add_text_markup_annotation_for_selected_text ev_view_add_text_markup_annotation_for_selected_text;
alias c_ev_view_autoscroll_start ev_view_autoscroll_start;
alias c_ev_view_autoscroll_stop ev_view_autoscroll_stop;
alias c_ev_view_begin_add_annotation ev_view_begin_add_annotation;
alias c_ev_view_can_zoom_in ev_view_can_zoom_in;
alias c_ev_view_can_zoom_out ev_view_can_zoom_out;
alias c_ev_view_cancel_add_annotation ev_view_cancel_add_annotation;
alias c_ev_view_copy ev_view_copy;
alias c_ev_view_copy_link_address ev_view_copy_link_address;
alias c_ev_view_find_cancel ev_view_find_cancel;
alias c_ev_view_find_changed ev_view_find_changed;
alias c_ev_view_find_next ev_view_find_next;
alias c_ev_view_find_previous ev_view_find_previous;
alias c_ev_view_find_restart ev_view_find_restart;
alias c_ev_view_find_search_changed ev_view_find_search_changed;
alias c_ev_view_find_set_highlight_search ev_view_find_set_highlight_search;
alias c_ev_view_find_set_result ev_view_find_set_result;
alias c_ev_view_find_started ev_view_find_started;
alias c_ev_view_focus_annotation ev_view_focus_annotation;
alias c_ev_view_get_allow_links_change_zoom ev_view_get_allow_links_change_zoom;
alias c_ev_view_get_enable_spellchecking ev_view_get_enable_spellchecking;
alias c_ev_view_get_has_selection ev_view_get_has_selection;
alias c_ev_view_get_page_extents ev_view_get_page_extents;
alias c_ev_view_get_page_extents_for_border ev_view_get_page_extents_for_border;
alias c_ev_view_get_selected_text ev_view_get_selected_text;
alias c_ev_view_handle_link ev_view_handle_link;
alias c_ev_view_hide_cursor ev_view_hide_cursor;
alias c_ev_view_highlight_forward_search ev_view_highlight_forward_search;
alias c_ev_view_is_caret_navigation_enabled ev_view_is_caret_navigation_enabled;
alias c_ev_view_is_loading ev_view_is_loading;
alias c_ev_view_next_page ev_view_next_page;
alias c_ev_view_previous_page ev_view_previous_page;
alias c_ev_view_reload ev_view_reload;
alias c_ev_view_remove_annotation ev_view_remove_annotation;
alias c_ev_view_scroll ev_view_scroll;
alias c_ev_view_select_all ev_view_select_all;
alias c_ev_view_set_allow_links_change_zoom ev_view_set_allow_links_change_zoom;
alias c_ev_view_set_caret_cursor_position ev_view_set_caret_cursor_position;
alias c_ev_view_set_caret_navigation_enabled ev_view_set_caret_navigation_enabled;
alias c_ev_view_set_enable_spellchecking ev_view_set_enable_spellchecking;
alias c_ev_view_set_loading ev_view_set_loading;
alias c_ev_view_set_model ev_view_set_model;
alias c_ev_view_set_page_cache_size ev_view_set_page_cache_size;
alias c_ev_view_show_cursor ev_view_show_cursor;
alias c_ev_view_supports_caret_navigation ev_view_supports_caret_navigation;
alias c_ev_view_zoom_in ev_view_zoom_in;
alias c_ev_view_zoom_out ev_view_zoom_out;

// evince.view.ViewPresentation

alias c_ev_view_presentation_get_type ev_view_presentation_get_type;
alias c_ev_view_presentation_new ev_view_presentation_new;
alias c_ev_view_presentation_get_current_page ev_view_presentation_get_current_page;
alias c_ev_view_presentation_get_rotation ev_view_presentation_get_rotation;
alias c_ev_view_presentation_next_page ev_view_presentation_next_page;
alias c_ev_view_presentation_previous_page ev_view_presentation_previous_page;
alias c_ev_view_presentation_set_rotation ev_view_presentation_set_rotation;

// evince.view.EvinceView

alias c_ev_stock_icons_init ev_stock_icons_init;
alias c_ev_stock_icons_set_screen ev_stock_icons_set_screen;
alias c_ev_stock_icons_shutdown ev_stock_icons_shutdown;
