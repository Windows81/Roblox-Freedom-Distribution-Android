.class Lcom/roblox/client/hybrid/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/h;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/roblox/client/hybrid/a/h;Landroid/content/Context;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/h$a;->a:Lcom/roblox/client/hybrid/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/hybrid/a/h$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/roblox/client/hybrid/a/h;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RBHybridModulePush PushPermissionTrigger.execute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "pushPermissionContext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableAuthorizationForUser"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/roblox/client/hybrid/a/h$a;->b:Landroid/content/Context;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v0

    iget-object v3, p0, Lcom/roblox/client/hybrid/a/h$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Z)V

    .line 48
    :cond_0
    invoke-virtual {p1, v2, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
