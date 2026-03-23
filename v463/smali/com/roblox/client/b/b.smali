.class public Lcom/roblox/client/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/b/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/client/b/b;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/roblox/client/b/b$a;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/roblox/client/b/b;->c:I

    .line 37
    iput v0, p0, Lcom/roblox/client/b/b;->d:I

    .line 39
    iput v0, p0, Lcom/roblox/client/b/b;->e:I

    .line 40
    iput v0, p0, Lcom/roblox/client/b/b;->f:I

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lcom/roblox/client/b/b;->g:J

    .line 44
    iput v0, p0, Lcom/roblox/client/b/b;->h:I

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/b/b;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcom/roblox/client/b/b;
    .locals 2

    .line 62
    sget-object v0, Lcom/roblox/client/b/b;->a:Lcom/roblox/client/b/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    const-class v0, Lcom/roblox/client/b/b;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/roblox/client/b/b;->a:Lcom/roblox/client/b/b;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Lcom/roblox/client/b/b;

    invoke-direct {v1}, Lcom/roblox/client/b/b;-><init>()V

    sput-object v1, Lcom/roblox/client/b/b;->a:Lcom/roblox/client/b/b;

    .line 70
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-object v0, Lcom/roblox/client/b/b;->a:Lcom/roblox/client/b/b;

    return-object v0

    :catchall_0
    move-exception v1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    .line 203
    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/g;

    move-result-object p1

    const-string v0, "rmmFragment"

    .line 205
    invoke-virtual {p1, v0}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v1, Lcom/roblox/client/b/c;

    invoke-direct {v1}, Lcom/roblox/client/b/c;-><init>()V

    .line 211
    invoke-virtual {v1, p0}, Lcom/roblox/client/b/c;->a(Lcom/roblox/client/b/c$a;)V

    .line 213
    :try_start_0
    invoke-virtual {v1, p1, v0}, Lcom/roblox/client/b/c;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/roblox/client/b/b;->e()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Mobile-Ratings-Shown-Android"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RateMeMaybe"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "rate_me_maybe"

    .line 193
    invoke-static {p0, v0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "RateMeMaybe"

    const-string v0, "Cleared RateMeMaybe shared preferences."

    .line 194
    invoke-static {p0, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e()Lcom/roblox/client/s/f;
    .locals 1

    .line 113
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IIIIJI)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/roblox/client/b/b;->c:I

    .line 142
    iput p2, p0, Lcom/roblox/client/b/b;->d:I

    .line 143
    iput p3, p0, Lcom/roblox/client/b/b;->e:I

    .line 144
    iput p4, p0, Lcom/roblox/client/b/b;->f:I

    .line 145
    iput-wide p5, p0, Lcom/roblox/client/b/b;->g:J

    .line 146
    iput p7, p0, Lcom/roblox/client/b/b;->h:I

    return-void
.end method

.method public a(J)V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v2, "PREF_LONGEST_GAME_DURATION"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    .line 177
    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    const-string v1, "PREF_GAMES_PLAYED"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 182
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 19

    move-object/from16 v0, p0

    .line 239
    iget-object v1, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v2, "PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/roblox/client/ae/l;->b(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "RateMeMaybe"

    if-nez v1, :cond_1

    const-string v1, "No Play Store installed on device."

    .line 244
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_1
    iget v1, v0, Lcom/roblox/client/b/b;->h:I

    iget-object v4, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v5, "PREF_GAMES_PLAYED"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v1, v4, :cond_2

    const-string v1, "Hasn\'t played a number games higher than the minimum requested."

    .line 249
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_2
    iget-wide v4, v0, Lcom/roblox/client/b/b;->g:J

    iget-object v1, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v6, "PREF_LONGEST_GAME_DURATION"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v1, v4, v9

    if-lez v1, :cond_3

    const-string v1, "Hasn\'t played a game for more than the minimum time requested."

    .line 254
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 258
    :cond_3
    iget-object v1, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 260
    iget-object v4, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v5, "PREF_TOTAL_LAUNCH_COUNT"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 264
    iget-object v9, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v10, "PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH"

    invoke-interface {v9, v10, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 267
    iget-object v11, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v12, "PREF_TIME_OF_LAST_PROMPT"

    invoke-interface {v11, v12, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 270
    iget-object v11, v0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v15, "PREF_LAUNCHES_SINCE_LAST_PROMPT"

    invoke-interface {v11, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 273
    iget v3, v0, Lcom/roblox/client/b/b;->c:I

    if-lt v4, v3, :cond_6

    sub-long v3, v5, v9

    iget v9, v0, Lcom/roblox/client/b/b;->d:I

    int-to-long v9, v9

    const-wide/32 v16, 0x5265c00

    mul-long v9, v9, v16

    cmp-long v18, v3, v9

    if-ltz v18, :cond_6

    const-string v3, "Enough time until initial prompt."

    .line 275
    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, v13, v7

    if-eqz v3, :cond_5

    .line 277
    iget v3, v0, Lcom/roblox/client/b/b;->e:I

    if-lt v11, v3, :cond_4

    sub-long v3, v5, v13

    iget v7, v0, Lcom/roblox/client/b/b;->f:I

    int-to-long v7, v7

    mul-long v7, v7, v16

    cmp-long v9, v3, v7

    if-ltz v9, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "User has seen a prompt recently || (Not enough launches since last prompt || Not enough time since last prompt)"

    .line 286
    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_5
    :goto_0
    const-string v3, "User has not seen a prompt || (Enough launches since last prompt && Enough time since last prompt)"

    .line 279
    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-interface {v1, v12, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    .line 282
    invoke-interface {v1, v15, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    invoke-direct/range {p0 .. p1}, Lcom/roblox/client/b/b;->b(Landroid/app/Activity;)V

    goto :goto_1

    :cond_6
    const-string v3, "Not enough time until initial prompt."

    .line 291
    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    const-string v0, "rate_me_maybe"

    .line 84
    invoke-static {p1, v0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v2, "CURRENT_APP_VERSION"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2.463.417712"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-static {p1}, Lcom/roblox/client/b/b;->b(Landroid/content/Context;)V

    .line 92
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "PREF_TOTAL_LAUNCH_COUNT"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 103
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object p1, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "PREF_LAUNCHES_SINCE_LAST_PROMPT"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 107
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/roblox/client/b/b;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/roblox/client/b/b;->d()V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/b/b;->c()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION"

    const/4 v2, 0x1

    .line 308
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    iget-object v0, p0, Lcom/roblox/client/b/b;->j:Lcom/roblox/client/b/b$a;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/roblox/client/b/b$a;->c()V

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/b/b;->e()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Mobile-Ratings-NotNow-Tapped-Android"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/roblox/client/b/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION"

    const/4 v2, 0x1

    .line 325
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    sget v0, Lcom/roblox/client/o$j;->Application_AppRating_Response_CouldNotLaunchPlayStore:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 338
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/b/b;->j:Lcom/roblox/client/b/b$a;

    if-eqz p1, :cond_0

    .line 339
    invoke-interface {p1}, Lcom/roblox/client/b/b$a;->a()V

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/b/b;->e()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Mobile-Ratings-Yes-Tapped-Android"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/roblox/client/b/b;->j:Lcom/roblox/client/b/b$a;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Lcom/roblox/client/b/b$a;->b()V

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/b/b;->e()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Mobile-Ratings-RemindMe-Tapped-Android"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method
