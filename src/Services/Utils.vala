/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText:  2011-2019 Matheus Fantinel
 *                          2025 Stella & Charlie (teamcons.carrd.co)
 *                          2025 Contributions from the ellie_Commons community (github.com/ellie-commons/)
 */

namespace Reminduck.Utils {

        private static void request_autostart () {
#if WINDOWS
            stdout.printf ("\nRequested autostart");
#else
            Xdp.Portal portal = new Xdp.Portal ();
            GenericArray<weak string> cmd = new GenericArray<weak string> ();
            cmd.add ("io.github.elly_code.reminduck");
            cmd.add ("--headless");

            portal.request_background.begin (
                null,
                _("Autostart Reminduck in background to send reminders"),
                cmd,
                Xdp.BackgroundFlags.AUTOSTART,
                null);

            stdout.printf ("\n🚀 Requested autostart");
#endif
        }

        private static void remove_autostart () {
#if WINDOWS
            stdout.printf ("\nRemoved autostart");
#else
            Xdp.Portal portal = new Xdp.Portal ();
            GenericArray<weak string> cmd = new GenericArray<weak string> ();
            cmd.add ("io.github.elly_code.reminduck");
            cmd.add ("--headless");

            portal.request_background.begin (
                null,
                _("Remove Reminduck from autostart"),
                cmd,
                Xdp.BackgroundFlags.NONE,
                null);

            stdout.printf ("\n🚀 Removed autostart");
#endif
        }
}
