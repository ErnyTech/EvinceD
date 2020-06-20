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


module evince.view.Job;

private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ErrorG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/** */
public class Job : ObjectG
{
	/** the main Gtk struct */
	protected EvJob* evJob;

	/** Get the main Gtk struct */
	public EvJob* getJobStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJob;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJob;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJob* evJob, bool ownedRef = false)
	{
		this.evJob = evJob;
		super(cast(GObject*)evJob, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_get_type();
	}

	/**
	 * Returns: an #EvJob
	 */
	public static Job schedulerGetRunningThreadJob()
	{
		auto __p = ev_job_scheduler_get_running_thread_job();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Job)(cast(EvJob*) __p);
	}

	/** */
	public void cancel()
	{
		ev_job_cancel(evJob);
	}

	/** */
	public void failedFromError(ErrorG error)
	{
		ev_job_failed_from_error(evJob, (error is null) ? null : error.getErrorGStruct());
	}

	/** */
	public EvJobRunMode getRunMode()
	{
		return ev_job_get_run_mode(evJob);
	}

	/** */
	public bool isFailed()
	{
		return ev_job_is_failed(evJob) != 0;
	}

	/** */
	public bool isFinished()
	{
		return ev_job_is_finished(evJob) != 0;
	}

	/** */
	public bool run()
	{
		return ev_job_run(evJob) != 0;
	}

	/** */
	public void schedulerPushJob(EvJobPriority priority)
	{
		ev_job_scheduler_push_job(evJob, priority);
	}

	/** */
	public void schedulerUpdateJob(EvJobPriority priority)
	{
		ev_job_scheduler_update_job(evJob, priority);
	}

	/** */
	public void setRunMode(EvJobRunMode runMode)
	{
		ev_job_set_run_mode(evJob, runMode);
	}

	/** */
	public void succeeded()
	{
		ev_job_succeeded(evJob);
	}

	/** */
	gulong addOnCancelled(void delegate(Job) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancelled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnFinished(void delegate(Job) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
