.class public Lcom/roblox/client/startup/a;
.super Landroidx/fragment/app/b;
.source "SourceFile"


# static fields
.field private static final ag:J

.field private static ah:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/roblox/client/startup/a;->ag:J

    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/roblox/client/startup/a;->ah:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/c;)V
    .locals 3

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/roblox/client/startup/a;->ah:Z

    .line 85
    new-instance v0, Lcom/roblox/client/startup/a;

    invoke-direct {v0}, Lcom/roblox/client/startup/a;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/g;

    move-result-object p0

    const-string v1, "notice_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/startup/a;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    .line 90
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 91
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p0, "deprecation_notice_previous_reminder"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static ao()Z
    .locals 6

    .line 58
    invoke-static {}, Lcom/roblox/client/b;->bE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/roblox/client/startup/a;->ah:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/roblox/client/b;->bC()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 65
    invoke-static {}, Lcom/roblox/client/b;->bF()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 67
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "deprecation_notice_previous_reminder"

    .line 69
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 70
    new-instance v3, Ljava/util/Date;

    sget-wide v4, Lcom/roblox/client/startup/a;->ag:J

    add-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 100
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/roblox/client/startup/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 104
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 105
    invoke-static {}, Lcom/roblox/client/b;->bB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 106
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 107
    sget v4, Lcom/roblox/client/o$j;->Deprecation_Notice_Message_With_Date:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v5, v0

    .line 110
    invoke-static {}, Lcom/roblox/client/b;->bD()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 107
    invoke-virtual {p0, v4, v5}, Lcom/roblox/client/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    sget v3, Lcom/roblox/client/o$j;->Deprecation_Notice_Message:I

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 116
    invoke-static {}, Lcom/roblox/client/b;->bD()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 113
    invoke-virtual {p0, v3, v2}, Lcom/roblox/client/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    sget v1, Lcom/roblox/client/o$j;->Deprecation_Notice_Title:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    sget v0, Lcom/roblox/client/o$j;->Deprecation_Notice_Ok:I

    new-instance v1, Lcom/roblox/client/startup/a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/a$1;-><init>(Lcom/roblox/client/startup/a;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
