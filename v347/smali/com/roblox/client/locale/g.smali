.class public Lcom/roblox/client/locale/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/locale/g;


# instance fields
.field private b:Lcom/roblox/client/locale/h;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/res/Configuration;

.field private e:Lcom/roblox/client/locale/a;

.field private f:Lorg/greenrobot/eventbus/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/roblox/client/locale/h;Landroid/content/res/Configuration;Lcom/roblox/client/locale/a;Lorg/greenrobot/eventbus/c;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/roblox/client/locale/g;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/roblox/client/locale/g;->b:Lcom/roblox/client/locale/h;

    .line 50
    iput-object p3, p0, Lcom/roblox/client/locale/g;->d:Landroid/content/res/Configuration;

    .line 51
    iput-object p4, p0, Lcom/roblox/client/locale/g;->e:Lcom/roblox/client/locale/a;

    .line 52
    iput-object p5, p0, Lcom/roblox/client/locale/g;->f:Lorg/greenrobot/eventbus/c;

    .line 53
    return-void
.end method

.method private a()Lcom/roblox/client/locale/c;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/roblox/client/locale/g;->e:Lcom/roblox/client/locale/a;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/roblox/client/locale/g;->e:Lcom/roblox/client/locale/a;

    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->b()Lcom/roblox/client/locale/c;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const-string v0, "App locale value is null"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 62
    const-string v0, "rbx.locale"

    const-string v1, "App locale value is null"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/roblox/client/locale/c;->a:Lcom/roblox/client/locale/c;

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "LocaleManager is null in getAppLocale()"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 67
    const-string v0, "rbx.locale"

    const-string v1, "LocaleManger is null in getAppLocale()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/roblox/client/locale/c;->a:Lcom/roblox/client/locale/c;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/locale/g;
    .locals 7

    .prologue
    .line 35
    sget-object v0, Lcom/roblox/client/locale/g;->a:Lcom/roblox/client/locale/g;

    if-nez v0, :cond_1

    .line 36
    const-class v6, Lcom/roblox/client/locale/g;

    monitor-enter v6

    .line 37
    :try_start_0
    sget-object v0, Lcom/roblox/client/locale/g;->a:Lcom/roblox/client/locale/g;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/roblox/client/locale/g;

    invoke-static {}, Lcom/roblox/client/locale/h;->a()Lcom/roblox/client/locale/h;

    move-result-object v2

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 39
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v4

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/locale/g;-><init>(Landroid/content/Context;Lcom/roblox/client/locale/h;Landroid/content/res/Configuration;Lcom/roblox/client/locale/a;Lorg/greenrobot/eventbus/c;)V

    sput-object v0, Lcom/roblox/client/locale/g;->a:Lcom/roblox/client/locale/g;

    .line 41
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/roblox/client/locale/g;->a:Lcom/roblox/client/locale/g;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    if-eqz p2, :cond_0

    .line 130
    const-string v0, "string"

    iget-object v1, p0, Lcom/roblox/client/locale/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const-string v0, "Resources passed to getStringByKeyName() is null."

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 133
    const-string v0, "rbx.locale"

    const-string v1, "Resources passed to getStringByKeyName() is null."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/roblox/client/locale/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/locale/g;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/roblox/client/locale/g;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/locale/g;->e:Lcom/roblox/client/locale/a;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/roblox/client/locale/g;->e:Lcom/roblox/client/locale/a;

    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->b()Lcom/roblox/client/locale/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/locale/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/g;->c(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "Context or LocaleManager is null in getStringFromResources()."

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 97
    const-string v0, "rbx.locale"

    const-string v1, "Context or LocaleManager is null in getStringFromResources()."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/g;->d(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/roblox/client/locale/g;->d:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/roblox/client/locale/g;->d:Landroid/content/res/Configuration;

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/roblox/client/locale/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 115
    iget-object v0, p0, Lcom/roblox/client/locale/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/roblox/client/locale/g;->d:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/locale/g;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string v0, "Configuration is null in getStringForApiLevel17AndAbove()."

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 119
    const-string v0, "rbx.locale"

    const-string v1, "Configuration is null in getStringForApiLevel17AndAbove()."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/roblox/client/locale/g;->a()Lcom/roblox/client/locale/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/locale/g;->a(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/locale/g;->b:Lcom/roblox/client/locale/h;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/locale/h;->a(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/g;->b(Ljava/lang/String;Lcom/roblox/client/locale/c;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method
