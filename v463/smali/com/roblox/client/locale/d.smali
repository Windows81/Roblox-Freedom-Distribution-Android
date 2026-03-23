.class public Lcom/roblox/client/locale/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/roblox/client/locale/d;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/locale/d;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/roblox/client/locale/d;->a:Landroid/content/Context;

    const-string v1, "LocaleSettingsPreferences"

    invoke-static {v0, v1}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/roblox/client/locale/f;
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/roblox/client/locale/d;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DEFAULT_LOCALE_VALUE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/roblox/client/locale/f;->a(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/roblox/client/locale/f;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PREF_NAME_UGC_LOCALE"

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/locale/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/roblox/client/locale/f;
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/roblox/client/locale/d;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_NAME_SELECTED_LOCALE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/roblox/client/locale/f;->a(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/roblox/client/locale/f;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DEFAULT_LOCALE_VALUE"

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/locale/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/roblox/client/locale/f;
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/locale/d;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_NAME_UGC_LOCALE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/roblox/client/locale/f;->a(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PREF_NAME_SELECTED_LOCALE"

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/locale/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
