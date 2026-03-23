.class public Lcom/roblox/client/remindernotification/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

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

    const-string v0, "reminderNotificationShown"

    const-string v1, "reminderNotification"

    .line 350
    invoke-static {v0, v1}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(J)V
    .locals 2

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "triggerDate"

    invoke-direct {v1, p1, p0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "alarmSetToTrigger"

    const-string p1, "reminderNotification"

    .line 346
    invoke-static {p0, p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .line 192
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->c(Lcom/roblox/client/ae/s;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 6

    .line 75
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->d(Lcom/roblox/client/ae/s;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Lcom/roblox/client/ae/s;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->d(Landroid/content/Context;)V

    .line 86
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->e(Landroid/content/Context;)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "TimeSinceLastSignedIn"

    .line 93
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Scheduling alarm for broadcasting."

    .line 100
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 104
    invoke-static {}, Lcom/roblox/client/b;->aC()I

    move-result p1

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x5

    .line 109
    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xb

    const/16 p3, 0x10

    .line 110
    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/16 p3, 0x1e

    .line 111
    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 115
    invoke-static {p0, p1, p2}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;J)V

    .line 117
    invoke-static {p0, p1, p2}, Lcom/roblox/client/remindernotification/a;->c(Landroid/content/Context;J)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 207
    sget-object v0, Lcom/roblox/client/startup/e;->i:Lcom/roblox/client/startup/e;

    const-string v1, "STARTED_FOR_INTENT_KEY"

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const-string p0, "ReminderNotificationHelper"

    const-string v0, "App opened from reminder notification"

    .line 210
    invoke-static {p0, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/roblox/client/remindernotification/a;->b()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "reason"

    invoke-direct {v1, v2, p0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "reminderNotificationNotShown"

    const-string v1, "reminderNotification"

    .line 356
    invoke-static {p0, v1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/roblox/client/ae/s;)Z
    .locals 6

    .line 379
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->f(Lcom/roblox/client/ae/s;)J

    move-result-wide v0

    .line 380
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->d(Lcom/roblox/client/ae/s;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b()V
    .locals 2

    const-string v0, "reminderNotificationClicked"

    const-string v1, "reminderNotification"

    .line 360
    invoke-static {v0, v1}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "Canceling reminder notification."

    .line 201
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget v0, Lcom/roblox/client/remindernotification/a;->a:I

    const-string v1, "ReminderNotificationABTestTAG"

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 5

    .line 135
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 152
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 159
    invoke-virtual {v1, v4, p1, p2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 164
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 165
    invoke-virtual {v1, v4, p1, p2, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v1, v4, p1, p2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 180
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/roblox/client/startup/BootCompletedBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 187
    invoke-static {p1, p2}, Lcom/roblox/client/remindernotification/a;->a(J)V

    :cond_2
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .line 329
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 330
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "LastSignedUpUsername"

    .line 332
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "LastSignedUpTime"

    .line 333
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Lcom/roblox/client/ae/s;)Z
    .locals 6

    .line 388
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->e(Lcom/roblox/client/ae/s;)Ljava/lang/String;

    move-result-object p0

    .line 390
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Lcom/roblox/client/ae/s;)J
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "AlarmTriggerTime"

    const-wide/16 v1, -0x1

    .line 434
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 6

    .line 218
    invoke-static {}, Lcom/roblox/client/remindernotification/a;->c()Z

    move-result v0

    const-string v1, "ReminderNotificationHelper"

    if-eqz v0, :cond_0

    const-string p0, "App in foreground. No need to show notification."

    .line 219
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "appIsVisible"

    .line 220
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_0
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Lcom/roblox/client/ae/s;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "App recently used. No need to show notification."

    .line 226
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "userActiveBeforeXDays"

    .line 227
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_1
    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->b(Lcom/roblox/client/ae/s;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Different user logged in."

    .line 232
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "userLoggedOut"

    .line 233
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Feature available only in English."

    .line 238
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "localeNotValid"

    .line 239
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Creating reminder notification."

    .line 243
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Landroidx/core/app/i$c;

    const-string v1, "channel_general"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/i$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    sget v1, Lcom/roblox/client/o$e;->notification_icon:I

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(I)Landroidx/core/app/i$c;

    .line 261
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->h(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Landroid/app/PendingIntent;)Landroidx/core/app/i$c;

    .line 264
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->g(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->b(Landroid/app/PendingIntent;)Landroidx/core/app/i$c;

    const/4 v1, 0x1

    .line 268
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Z)Landroidx/core/app/i$c;

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$i;->ic_launcher:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/i$c;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/i$c;

    .line 287
    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Label_Roblox:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/i$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 289
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 293
    :try_start_0
    invoke-static {}, Lcom/roblox/client/b;->aE()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v5, "%1$s, check out these top games!"

    .line 295
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Illegal format exception on reminder notification short text."

    .line 296
    invoke-static {v5}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    .line 299
    :goto_0
    invoke-virtual {v0, v4}, Landroidx/core/app/i$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 303
    :try_start_1
    invoke-static {}, Lcom/roblox/client/b;->aD()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "%1$s, play the most popular games on Roblox now!"

    .line 305
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Illegal format exception on reminder notification long text."

    .line 306
    invoke-static {v2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    .line 309
    :goto_1
    new-instance v2, Landroidx/core/app/i$b;

    invoke-direct {v2}, Landroidx/core/app/i$b;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/core/app/i$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Landroidx/core/app/i$d;)Landroidx/core/app/i$c;

    .line 315
    invoke-static {p0}, Landroidx/core/app/l;->a(Landroid/content/Context;)Landroidx/core/app/l;

    move-result-object p0

    .line 316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/core/app/l;->a()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "notificationsDisabled"

    const-string v2, "reminderNotification"

    .line 317
    invoke-static {v1, v2}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_4
    invoke-static {}, Lcom/roblox/client/b;->aP()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    sget v1, Lcom/roblox/client/remindernotification/a;->a:I

    invoke-virtual {v0}, Landroidx/core/app/i$c;->b()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "ReminderNotificationABTestTAG"

    invoke-virtual {p0, v2, v1, v0}, Landroidx/core/app/l;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 322
    invoke-static {}, Lcom/roblox/client/remindernotification/a;->a()V

    :cond_5
    return-void
.end method

.method private static c(Landroid/content/Context;J)V
    .locals 1

    .line 420
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "AlarmTriggerTime"

    .line 425
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static c()Z
    .locals 1

    .line 397
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/c;->g()Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/roblox/client/ae/s;)J
    .locals 3

    .line 441
    invoke-virtual {p0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "LastSignedUpTime"

    const-wide/16 v1, -0x1

    .line 442
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "clearing preferences"

    .line 401
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TimeSinceLastSignedIn"

    .line 405
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "LastSignedUpUsername"

    .line 406
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "LastSignedUpTime"

    .line 407
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/roblox/client/startup/BootCompletedBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 414
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static e(Lcom/roblox/client/ae/s;)Ljava/lang/String;
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "LastSignedUpUsername"

    const-string v1, ""

    .line 450
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ReminderNotificationHelper"

    const-string v1, "canceling alarm."

    .line 121
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->f(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 123
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const-string v1, "reminderNotification"

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p0, "alarmCanceled"

    .line 128
    invoke-static {p0, v1}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "cancelingAlarmMgrNull"

    .line 130
    invoke-static {p0, v1}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static f(Lcom/roblox/client/ae/s;)J
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "TimeSinceLastSignedIn"

    const-wide/16 v1, -0x1

    .line 458
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/remindernotification/ReminderNotificationBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reminder_notification_alarm_triggered"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ea

    const/high16 v2, 0x10000000

    .line 340
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/remindernotification/ReminderNotificationBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reminder_notification_dismissed"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    const/high16 v2, 0x10000000

    .line 366
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 375
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->i(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 462
    sget-object v0, Lcom/roblox/client/startup/e;->i:Lcom/roblox/client/startup/e;

    invoke-static {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10008000

    .line 463
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method
