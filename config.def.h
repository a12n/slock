#include <X11/XKBlib.h>

/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#282828",       /* after initialization */
	[INPUT] =  "#458588",       /* during input */
	[FAILED] = "#CC241D",       /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

static void
post_lock(Display *dpy)
{
	if (XkbQueryExtension(dpy, NULL, NULL, NULL, NULL, NULL) > 0) {
		XkbLockGroup(dpy, XkbUseCoreKbd, XkbGroup1Index);
	}
}

static void
pre_unlock(Display *dpy)
{
}
