.class public Lcom/roblox/client/locale/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/locale/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/client/locale/a;


# instance fields
.field private b:Lcom/roblox/client/locale/c;

.field private c:Lcom/roblox/client/locale/c;

.field private d:Ljava/util/Locale;

.field private e:Lcom/roblox/client/locale/c;

.field private f:Lcom/roblox/client/locale/c;

.field private g:Lcom/roblox/client/locale/a$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    .line 35
    iput-object v0, p0, Lcom/roblox/client/locale/a;->c:Lcom/roblox/client/locale/c;

    .line 38
    iput-object v0, p0, Lcom/roblox/client/locale/a;->d:Ljava/util/Locale;

    .line 41
    iput-object v0, p0, Lcom/roblox/client/locale/a;->e:Lcom/roblox/client/locale/c;

    .line 44
    iput-object v0, p0, Lcom/roblox/client/locale/a;->f:Lcom/roblox/client/locale/c;

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/a;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 195
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 197
    invoke-virtual {p4, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 198
    invoke-virtual {p4, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 205
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 208
    invoke-virtual {p1, p4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/roblox/client/locale/a;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/roblox/client/locale/a;->a:Lcom/roblox/client/locale/a;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcom/roblox/client/locale/a;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/roblox/client/locale/a;->a:Lcom/roblox/client/locale/a;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/roblox/client/locale/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/a;-><init>()V

    sput-object v0, Lcom/roblox/client/locale/a;->a:Lcom/roblox/client/locale/a;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/roblox/client/locale/a;->a:Lcom/roblox/client/locale/a;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "PREF_NAME_SELECTED_LOCALE"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 227
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v0, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/roblox/client/locale/c;)V
    .locals 1

    .prologue
    .line 152
    invoke-static {p1}, Lcom/roblox/client/locale/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/c;Landroid/content/SharedPreferences;)V

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/locale/a;->b(Landroid/content/Context;Lcom/roblox/client/locale/c;)Landroid/content/Context;

    .line 154
    return-void
.end method

.method private a(Lcom/roblox/client/locale/c;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 187
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    const-string v1, "PREF_NAME_SELECTED_LOCALE"

    invoke-virtual {p1}, Lcom/roblox/client/locale/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/roblox/client/locale/c;)Landroid/content/Context;
    .locals 4

    .prologue
    .line 170
    iput-object p2, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    .line 171
    invoke-virtual {p2}, Lcom/roblox/client/locale/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/roblox/client/locale/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 3

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/a;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 216
    iput-object v0, p4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 217
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 218
    invoke-virtual {p4, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 221
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 222
    return-object p1
.end method

.method private static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 236
    const-string v0, "LocaleSettingsPreferences"

    invoke-static {p0, v0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/roblox/client/locale/c;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    invoke-virtual {v0, p1}, Lcom/roblox/client/locale/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/roblox/client/locale/c;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/roblox/client/locale/a;->c:Lcom/roblox/client/locale/c;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/roblox/client/locale/a;->c:Lcom/roblox/client/locale/c;

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/roblox/client/locale/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DEFAULT_LOCALE_VALUE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/roblox/client/locale/c;->a:Lcom/roblox/client/locale/c;

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/locale/a$a;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/roblox/client/locale/a;->g:Lcom/roblox/client/locale/a$a;

    .line 141
    return-void
.end method

.method a(Lcom/roblox/client/locale/c;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/roblox/client/locale/a;->c:Lcom/roblox/client/locale/c;

    .line 82
    return-void
.end method

.method public a(Lcom/roblox/client/locale/c;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/a;->a(Lcom/roblox/client/locale/c;)V

    .line 86
    invoke-static {p2}, Lcom/roblox/client/locale/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    const-string v1, "DEFAULT_LOCALE_VALUE"

    invoke-virtual {p1}, Lcom/roblox/client/locale/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/roblox/client/locale/a;->d:Ljava/util/Locale;

    .line 129
    return-void
.end method

.method public b()Lcom/roblox/client/locale/c;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    .line 94
    if-nez v0, :cond_0

    .line 95
    const-string v0, "rbx.locale"

    const-string v1, "mUserLocale is empty"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/roblox/client/locale/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/locale/a;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    const-string v0, "rbx.locale"

    const-string v1, "No stored value for mUserLocale."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/roblox/client/locale/c;->a:Lcom/roblox/client/locale/c;

    .line 103
    :cond_0
    const-string v1, "rbx.locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating App configuration based on locale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/locale/a;->b(Landroid/content/Context;Lcom/roblox/client/locale/c;)Landroid/content/Context;

    .line 105
    return-void
.end method

.method public b(Lcom/roblox/client/locale/c;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    .line 109
    return-void
.end method

.method public b(Lcom/roblox/client/locale/c;Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    .line 158
    if-eqz p1, :cond_1

    .line 159
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/a;->e(Lcom/roblox/client/locale/c;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 160
    :cond_0
    if-eqz v0, :cond_1

    .line 161
    if-eqz p2, :cond_1

    .line 162
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Lcom/roblox/client/locale/c;)V

    .line 166
    :cond_1
    return v0
.end method

.method public c()Lcom/roblox/client/locale/c;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/roblox/client/locale/a;->f:Lcom/roblox/client/locale/c;

    return-object v0
.end method

.method public c(Lcom/roblox/client/locale/c;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/locale/a;->f:Lcom/roblox/client/locale/c;

    .line 121
    return-void
.end method

.method public d()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/roblox/client/locale/a;->d:Ljava/util/Locale;

    return-object v0
.end method

.method public d(Lcom/roblox/client/locale/c;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/roblox/client/locale/a;->e:Lcom/roblox/client/locale/c;

    .line 133
    return-void
.end method

.method public e()Lcom/roblox/client/locale/c;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/roblox/client/locale/a;->e:Lcom/roblox/client/locale/c;

    return-object v0
.end method

.method public f()Lcom/roblox/client/locale/a$a;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/roblox/client/locale/a;->g:Lcom/roblox/client/locale/a$a;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/locale/a;->d:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/locale/a;->b:Lcom/roblox/client/locale/c;

    invoke-virtual {v0}, Lcom/roblox/client/locale/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/locale/a;->d:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

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
