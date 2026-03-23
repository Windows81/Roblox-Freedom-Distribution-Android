.class public Lcom/roblox/client/remindernotification/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    sput v0, Lcom/roblox/client/remindernotification/a;->a:I

    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "reminderNotificationShown"

    const-string v1, "reminderNotification"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private static a(J)V
    .locals 4

    .prologue
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "triggerDate"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v1, "alarmSetToTrigger"

    const-string v2, "reminderNotification"

    invoke-static {v1, v2, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 347
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 192
    invoke-static {p0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->c(Lcom/roblox/client/util/m;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;J)V

    .line 195
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 75
    invoke-static {p0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->d(Lcom/roblox/client/util/m;)J

    move-result-wide v2

    .line 78
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Lcom/roblox/client/util/m;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->d(Landroid/content/Context;)V

    .line 86
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    const-string v1, "TimeSinceLastSignedIn"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 100
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Scheduling alarm for broadcasting."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 104
    invoke-static {}, Lcom/roblox/client/b;->bu()I

    move-result v0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 109
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 110
    const/16 v0, 0xb

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v0, 0xc

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 115
    invoke-static {p0, v0, v1}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;J)V

    .line 117
    invoke-static {p0, v0, v1}, Lcom/roblox/client/remindernotification/a;->c(Landroid/content/Context;J)V

    .line 118
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 207
    if-eqz p0, :cond_0

    sget-object v0, Lcom/roblox/client/startup/e;->i:Lcom/roblox/client/startup/e;

    const-string v1, "STARTED_FOR_INTENT_KEY"

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 210
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "App opened from reminder notification"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/roblox/client/remindernotification/a;->b()V

    .line 214
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "reason"

    invoke-direct {v1, v2, p0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v1, "reminderNotificationNotShown"

    const-string v2, "reminderNotification"

    invoke-static {v1, v2, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 357
    return-void
.end method

.method private static a(Lcom/roblox/client/util/m;)Z
    .locals 6

    .prologue
    .line 379
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->f(Lcom/roblox/client/util/m;)J

    move-result-wide v0

    .line 380
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->d(Lcom/roblox/client/util/m;)J

    move-result-wide v2

    .line 384
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "reminderNotificationClicked"

    const-string v1, "reminderNotification"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 198
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 200
    if-eqz v0, :cond_0

    .line 201
    const-string v1, "ReminderNotificationHelper"

    const-string v2, "Canceling reminder notification."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v1, "ReminderNotificationABTestTAG"

    sget v2, Lcom/roblox/client/remindernotification/a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 204
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 152
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 154
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 159
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 180
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/roblox/client/startup/BootCompletedBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 187
    invoke-static {p1, p2}, Lcom/roblox/client/remindernotification/a;->a(J)V

    .line 189
    :cond_0
    return-void

    .line 164
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 165
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 329
    invoke-static {p0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    const-string v1, "LastSignedUpUsername"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v1, "LastSignedUpTime"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    return-void
.end method

.method private static b(Lcom/roblox/client/util/m;)Z
    .locals 6

    .prologue
    .line 388
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->e(Lcom/roblox/client/util/m;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/roblox/client/util/m;)J
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 434
    const-string v1, "AlarmTriggerTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/high16 v3, 0x7f0c0000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    invoke-static {}, Lcom/roblox/client/remindernotification/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "App in foreground. No need to show notification."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "appIsVisible"

    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {p0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Lcom/roblox/client/util/m;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "App recently used. No need to show notification."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "userActiveBeforeXDays"

    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->b(Lcom/roblox/client/util/m;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Different user logged in."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "userLoggedOut"

    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Feature available only in English."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "localeNotValid"

    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_4
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Creating reminder notification."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Landroid/support/v4/app/z$c;

    const-string v0, "channel_general"

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/z$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1, v3}, Landroid/support/v4/app/z$c;->a(I)Landroid/support/v4/app/z$c;

    .line 261
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->h(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$c;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    .line 264
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->g(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$c;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    .line 268
    invoke-virtual {v1, v5}, Landroid/support/v4/app/z$c;->a(Z)Landroid/support/v4/app/z$c;

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$c;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/z$c;

    .line 287
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    .line 289
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 293
    :try_start_0
    invoke-static {}, Lcom/roblox/client/b;->bw()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 299
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$c;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    .line 303
    :try_start_1
    invoke-static {}, Lcom/roblox/client/b;->bv()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 309
    :goto_2
    new-instance v2, Landroid/support/v4/app/z$b;

    invoke-direct {v2}, Landroid/support/v4/app/z$b;-><init>()V

    invoke-virtual {v2, v0}, Landroid/support/v4/app/z$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z$c;->a(Landroid/support/v4/app/z$d;)Landroid/support/v4/app/z$c;

    .line 315
    invoke-static {p0}, Landroid/support/v4/app/ac;->a(Landroid/content/Context;)Landroid/support/v4/app/ac;

    move-result-object v0

    .line 316
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 317
    const-string v2, "notificationsDisabled"

    const-string v3, "reminderNotification"

    invoke-static {v2, v3}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_5
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const-string v2, "ReminderNotificationABTestTAG"

    sget v3, Lcom/roblox/client/remindernotification/a;->a:I

    invoke-virtual {v1}, Landroid/support/v4/app/z$c;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 322
    invoke-static {}, Lcom/roblox/client/remindernotification/a;->a()V

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string v0, "%1$s, check out these top games!"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v3, "Illegal format exception on reminder notification short text."

    invoke-static {v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    .line 305
    const-string v0, "%1$s, play the most popular games on Roblox now!"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v2, "Illegal format exception on reminder notification long text."

    invoke-static {v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static c(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 420
    invoke-static {p0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    const-string v1, "AlarmTriggerTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    return-void
.end method

.method private static c()Z
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/c;->d()Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/roblox/client/util/m;)J
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 442
    const-string v1, "LastSignedUpTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 401
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "clearing preferences"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {p0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 405
    const-string v1, "TimeSinceLastSignedIn"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    const-string v1, "LastSignedUpUsername"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string v1, "LastSignedUpTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/roblox/client/startup/BootCompletedBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 414
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 417
    return-void
.end method

.method private static e(Lcom/roblox/client/util/m;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 450
    const-string v1, "LastSignedUpUsername"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 121
    const-string v0, "ReminderNotificationHelper"

    const-string v1, "canceling alarm."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 123
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 128
    const-string v0, "alarmCanceled"

    const-string v1, "reminderNotification"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "cancelingAlarmMgrNull"

    const-string v1, "reminderNotification"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f(Lcom/roblox/client/util/m;)J
    .locals 4

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    const-string v1, "TimeSinceLastSignedIn"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/remindernotification/ReminderNotificationBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v1, "reminder_notification_alarm_triggered"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/16 v1, 0x3ea

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/remindernotification/ReminderNotificationBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    const-string v1, "reminder_notification_dismissed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/16 v1, 0x3e9

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 375
    const/16 v0, 0x3e8

    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->i(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 462
    sget-object v0, Lcom/roblox/client/startup/e;->i:Lcom/roblox/client/startup/e;

    invoke-static {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 463
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 465
    return-object v0
.end method
