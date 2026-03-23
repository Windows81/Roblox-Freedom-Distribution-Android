.class public Lcom/roblox/client/game/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/roblox/engine/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    .line 31
    new-instance p1, Lcom/roblox/engine/e;

    invoke-direct {p1}, Lcom/roblox/engine/e;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/game/e;->b:Lcom/roblox/engine/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/game/b$a;
    .locals 4

    .line 86
    new-instance v0, Lcom/roblox/client/game/e;

    invoke-direct {v0, p0}, Lcom/roblox/client/game/e;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance p0, Lcom/roblox/engine/jni/model/a;

    invoke-virtual {v0}, Lcom/roblox/client/game/e;->a()Lcom/roblox/engine/jni/model/c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roblox/engine/jni/model/a;-><init>(Lcom/roblox/engine/jni/model/c;)V

    .line 89
    invoke-static {}, Lcom/roblox/client/x/c;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/roblox/engine/jni/model/a;->isLuaHomePageEnabled:Z

    .line 90
    invoke-static {}, Lcom/roblox/client/x/c;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/roblox/engine/jni/model/a;->isLuaGamesPageEnabled:Z

    .line 91
    invoke-static {}, Lcom/roblox/client/x/c;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/roblox/engine/jni/model/a;->isLuaChatEnabled:Z

    .line 92
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/roblox/engine/jni/model/a;->isTablet:Z

    .line 94
    invoke-virtual {v0}, Lcom/roblox/client/game/e;->b()Lcom/roblox/engine/jni/model/b;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/roblox/client/game/b$a;

    invoke-direct {v1}, Lcom/roblox/client/game/b$a;-><init>()V

    .line 97
    iput-object p0, v1, Lcom/roblox/client/game/b$a;->a:Lcom/roblox/engine/jni/model/c;

    .line 98
    iput-object v0, v1, Lcom/roblox/client/game/b$a;->b:Lcom/roblox/engine/jni/model/b;

    .line 99
    invoke-static {}, Lcom/roblox/client/x/c;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/roblox/client/game/b$a;->c:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/roblox/client/x/c;->f()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/roblox/client/game/b$a;->d:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/ad/c;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/roblox/client/game/b$a;->e:J

    .line 102
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/ad/c;->i()Z

    move-result p0

    iput-boolean p0, v1, Lcom/roblox/client/game/b$a;->f:Z

    .line 103
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/roblox/client/game/b$a;->g:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/ad/c;->k()I

    move-result p0

    iput p0, v1, Lcom/roblox/client/game/b$a;->h:I

    .line 105
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/ad/c;->l()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/roblox/client/game/b$a;->i:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public a()Lcom/roblox/engine/jni/model/c;
    .locals 3

    .line 37
    invoke-static {}, Lcom/roblox/engine/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lcom/roblox/engine/f;->a()Lcom/roblox/engine/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlatformParams: assetFolderPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataModelParamsCreator"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Lcom/roblox/engine/jni/model/c;

    invoke-direct {v1}, Lcom/roblox/engine/jni/model/c;-><init>()V

    .line 44
    iput-object v0, v1, Lcom/roblox/engine/jni/model/c;->assetFolderPath:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.touchscreen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/roblox/engine/jni/model/c;->isTouchDevice:Z

    .line 46
    iget-object v0, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.pc"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/roblox/engine/jni/model/c;->isMouseDevice:Z

    .line 47
    iget-object v0, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/roblox/engine/jni/model/c;->isKeyboardDevice:Z

    .line 48
    invoke-virtual {p0}, Lcom/roblox/client/game/e;->c()F

    move-result v0

    iput v0, v1, Lcom/roblox/engine/jni/model/c;->dpiScale:F

    return-object v1
.end method

.method public b()Lcom/roblox/engine/jni/model/b;
    .locals 4

    .line 53
    new-instance v0, Lcom/roblox/engine/jni/model/b;

    invoke-direct {v0}, Lcom/roblox/engine/jni/model/b;-><init>()V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->osVersion:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/roblox/client/k;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->deviceName:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/roblox/client/u;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->appVersion:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/locale/b;->c()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->country:Ljava/lang/String;

    .line 61
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->manufacturer:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/roblox/platform/a/a;->a()I

    move-result v1

    iput v1, v0, Lcom/roblox/engine/jni/model/b;->deviceTotalMemoryMB:I

    .line 64
    iget-object v1, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/roblox/client/x;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->displayResolution:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/roblox/client/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/engine/jni/model/b;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public c()F
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/roblox/client/game/e;->b:Lcom/roblox/engine/e;

    iget-object v1, p0, Lcom/roblox/client/game/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/e;->a(Landroid/content/Context;)F

    move-result v0

    return v0
.end method
