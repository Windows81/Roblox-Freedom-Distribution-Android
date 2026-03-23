.class public Lcom/roblox/client/locale/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/locale/j;


# instance fields
.field private b:Lcom/roblox/client/locale/k;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/res/Configuration;

.field private e:Lcom/roblox/client/locale/b;

.field private f:Lorg/greenrobot/eventbus/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/roblox/client/locale/k;Landroid/content/res/Configuration;Lcom/roblox/client/locale/b;Lorg/greenrobot/eventbus/c;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/roblox/client/locale/j;->c:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/roblox/client/locale/j;->b:Lcom/roblox/client/locale/k;

    .line 49
    iput-object p3, p0, Lcom/roblox/client/locale/j;->d:Landroid/content/res/Configuration;

    .line 50
    iput-object p4, p0, Lcom/roblox/client/locale/j;->e:Lcom/roblox/client/locale/b;

    .line 51
    iput-object p5, p0, Lcom/roblox/client/locale/j;->f:Lorg/greenrobot/eventbus/c;

    return-void
.end method

.method private a()Lcom/roblox/client/locale/f;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/roblox/client/locale/j;->e:Lcom/roblox/client/locale/b;

    const-string v1, "rbx.locale"

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/roblox/client/locale/b;->b()Lcom/roblox/client/locale/f;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "App locale value is null"

    .line 60
    invoke-static {v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    .line 61
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    return-object v0

    :cond_1
    const-string v0, "LocaleManager is null in getAppLocale()"

    .line 65
    invoke-static {v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const-string v0, "LocaleManger is null in getAppLocale()"

    .line 66
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/locale/j;
    .locals 8

    .line 34
    sget-object v0, Lcom/roblox/client/locale/j;->a:Lcom/roblox/client/locale/j;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/roblox/client/locale/j;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/roblox/client/locale/j;->a:Lcom/roblox/client/locale/j;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/roblox/client/locale/j;

    invoke-static {}, Lcom/roblox/client/locale/k;->a()Lcom/roblox/client/locale/k;

    move-result-object v4

    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 38
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v6

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/roblox/client/locale/j;-><init>(Landroid/content/Context;Lcom/roblox/client/locale/k;Landroid/content/res/Configuration;Lcom/roblox/client/locale/b;Lorg/greenrobot/eventbus/c;)V

    sput-object v1, Lcom/roblox/client/locale/j;->a:Lcom/roblox/client/locale/j;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 42
    :cond_1
    :goto_0
    sget-object p0, Lcom/roblox/client/locale/j;->a:Lcom/roblox/client/locale/j;

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "string"

    .line 139
    iget-object v2, p0, Lcom/roblox/client/locale/j;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 141
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resources.NotFoundException thrown in getStringByKeyName() for key: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p1, "rbx.locale"

    const-string p2, "Resources passed to getStringByKeyName() is null."

    .line 145
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/roblox/client/locale/j;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/locale/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/roblox/client/locale/j;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/locale/j;->e:Lcom/roblox/client/locale/b;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/roblox/client/locale/b;->b()Lcom/roblox/client/locale/f;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/j;->c(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Context or LocaleManager is null in getStringFromResources()."

    .line 108
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const-string p2, "rbx.locale"

    .line 109
    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/roblox/client/locale/j;->d:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 117
    iget-object p2, p0, Lcom/roblox/client/locale/j;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/roblox/client/locale/j;->d:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/j;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Configuration is null in getStringForLocale()."

    .line 120
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const-string p2, "rbx.locale"

    .line 121
    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/roblox/client/locale/j;->a()Lcom/roblox/client/locale/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/locale/j;->a(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/roblox/client/locale/j;->b:Lcom/roblox/client/locale/k;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/locale/k;->a(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/j;->b(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "IllegalFormatException thrown in getString() of StringResourceAccessor"

    .line 84
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method
