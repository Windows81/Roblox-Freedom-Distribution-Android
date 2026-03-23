.class public Lcom/roblox/client/locale/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/locale/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/client/locale/b;


# instance fields
.field private b:Lcom/roblox/client/locale/f;

.field private c:Lcom/roblox/client/locale/f;

.field private d:Ljava/util/Locale;

.field private e:Lcom/roblox/client/locale/f;

.field private f:Ljava/lang/String;

.field private g:Lcom/roblox/client/locale/b$a;

.field private h:Lcom/roblox/client/locale/c;

.field private i:Lcom/roblox/client/locale/c$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/roblox/client/locale/b;->b:Lcom/roblox/client/locale/f;

    .line 34
    iput-object v0, p0, Lcom/roblox/client/locale/b;->c:Lcom/roblox/client/locale/f;

    .line 37
    iput-object v0, p0, Lcom/roblox/client/locale/b;->d:Ljava/util/Locale;

    .line 40
    iput-object v0, p0, Lcom/roblox/client/locale/b;->e:Lcom/roblox/client/locale/f;

    .line 43
    iput-object v0, p0, Lcom/roblox/client/locale/b;->f:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/roblox/client/locale/b$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/locale/b$1;-><init>(Lcom/roblox/client/locale/b;)V

    iput-object v0, p0, Lcom/roblox/client/locale/b;->i:Lcom/roblox/client/locale/c$a;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/roblox/client/locale/f;)Landroid/content/Context;
    .locals 3

    .line 220
    iput-object p2, p0, Lcom/roblox/client/locale/b;->b:Lcom/roblox/client/locale/f;

    .line 221
    invoke-virtual {p2}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/roblox/client/locale/b;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    .line 234
    invoke-static {p2}, Lcom/roblox/client/locale/b;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    .line 235
    invoke-static {p2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 237
    invoke-virtual {p4, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 238
    invoke-virtual {p4, p2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 245
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 248
    invoke-virtual {p1, p4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lcom/roblox/client/locale/b;
    .locals 2

    .line 61
    sget-object v0, Lcom/roblox/client/locale/b;->a:Lcom/roblox/client/locale/b;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/roblox/client/locale/b;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/roblox/client/locale/b;->a:Lcom/roblox/client/locale/b;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/roblox/client/locale/b;

    invoke-direct {v1}, Lcom/roblox/client/locale/b;-><init>()V

    sput-object v1, Lcom/roblox/client/locale/b;->a:Lcom/roblox/client/locale/b;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/locale/b;->a:Lcom/roblox/client/locale/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    const-string v0, "_"

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 267
    new-instance v0, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 269
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    .line 253
    invoke-static {p2}, Lcom/roblox/client/locale/b;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    .line 254
    invoke-static {p2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 256
    iput-object p2, p4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 257
    invoke-virtual {p4, p2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 259
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p1
.end method

.method private d(Landroid/content/Context;)Lcom/roblox/client/locale/c;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/roblox/client/locale/b;->h:Lcom/roblox/client/locale/c;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/roblox/client/locale/b;->i:Lcom/roblox/client/locale/c$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/locale/c$a;->a(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/locale/b;->h:Lcom/roblox/client/locale/c;

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/locale/b;->h:Lcom/roblox/client/locale/c;

    return-object p1
.end method

.method private e()Lcom/roblox/client/locale/f;
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/roblox/client/locale/b;->c()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    invoke-static {v0}, Lcom/roblox/client/locale/f;->b(Ljava/lang/String;)Lcom/roblox/client/locale/f;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    :goto_0
    return-object v0

    .line 118
    :cond_2
    sget-object v0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/roblox/client/locale/f;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/roblox/client/locale/b;->c:Lcom/roblox/client/locale/f;

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/b;->d(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/locale/c;->a()Lcom/roblox/client/locale/f;

    move-result-object p1

    if-nez p1, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/roblox/client/locale/b;->e()Lcom/roblox/client/locale/f;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p2, p0, Lcom/roblox/client/locale/b;->f:Ljava/lang/String;

    .line 174
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/b;->d(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object p1

    iget-object p2, p0, Lcom/roblox/client/locale/b;->f:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/roblox/client/locale/b$a;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/roblox/client/locale/b;->g:Lcom/roblox/client/locale/b$a;

    return-void
.end method

.method a(Lcom/roblox/client/locale/f;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/roblox/client/locale/b;->c:Lcom/roblox/client/locale/f;

    return-void
.end method

.method public a(Lcom/roblox/client/locale/f;Landroid/content/Context;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/b;->a(Lcom/roblox/client/locale/f;)V

    .line 128
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/b;->d(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object p1

    iget-object p2, p0, Lcom/roblox/client/locale/b;->c:Lcom/roblox/client/locale/f;

    invoke-interface {p1, p2}, Lcom/roblox/client/locale/c;->a(Lcom/roblox/client/locale/f;)V

    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/roblox/client/locale/b;->d:Ljava/util/Locale;

    return-void
.end method

.method public b()Lcom/roblox/client/locale/f;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/roblox/client/locale/b;->b:Lcom/roblox/client/locale/f;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/roblox/client/locale/b;->b:Lcom/roblox/client/locale/f;

    const-string v1, "rbx.locale"

    if-nez v0, :cond_0

    const-string v0, "mUserLocale is empty"

    .line 135
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/b;->d(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/locale/c;->b()Lcom/roblox/client/locale/f;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No stored value for mUserLocale."

    .line 139
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/roblox/client/locale/b;->e()Lcom/roblox/client/locale/f;

    move-result-object v0

    .line 143
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating App configuration based on locale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;Lcom/roblox/client/locale/f;)Landroid/content/Context;

    return-void
.end method

.method public b(Lcom/roblox/client/locale/f;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/roblox/client/locale/b;->e:Lcom/roblox/client/locale/f;

    return-void
.end method

.method public b(Lcom/roblox/client/locale/f;Landroid/content/Context;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/b;->c(Lcom/roblox/client/locale/f;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 211
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/b;->d(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/roblox/client/locale/c;->b(Lcom/roblox/client/locale/f;)V

    .line 212
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;Lcom/roblox/client/locale/f;)Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/roblox/client/locale/b;->f:Ljava/lang/String;

    const-string v1, "rbx.locale"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v2, "mUGCLocaleCode is Empty"

    .line 158
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1}, Lcom/roblox/client/locale/b;->d(Landroid/content/Context;)Lcom/roblox/client/locale/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/locale/c;->c()Lcom/roblox/client/locale/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "No stored value for mUGCLocaleCode. Use English"

    .line 164
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object p1, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    invoke-virtual {p1}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUGCLocaleCode value is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/roblox/client/locale/b;->d:Ljava/util/Locale;

    return-object v0
.end method

.method public c(Lcom/roblox/client/locale/f;)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/roblox/client/locale/b;->b:Lcom/roblox/client/locale/f;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d()Lcom/roblox/client/locale/b$a;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/roblox/client/locale/b;->g:Lcom/roblox/client/locale/b$a;

    return-object v0
.end method
