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
}

static void
pre_unlock(Display *dpy)
{
}
