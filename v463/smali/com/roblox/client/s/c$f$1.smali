.class Lcom/roblox/client/s/c$f$1;
.super Lcom/roblox/engine/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/c$f;->a()Lcom/roblox/engine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/s/c$f;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/c$f;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/roblox/client/s/c$f$1;->a:Lcom/roblox/client/s/c$f;

    invoke-direct {p0}, Lcom/roblox/engine/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 560
    invoke-static {p1}, Lcom/roblox/client/i;->d(Landroid/content/Context;)V

    .line 563
    invoke-static {}, Lcom/roblox/client/b;->cw()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/roblox/client/x/c;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 564
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->u()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "assets"

    .line 566
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/content/guac/defaultConfigs/GuacDefaultPolicy-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-static {p1}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeSetDefaultAppPolicyFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
