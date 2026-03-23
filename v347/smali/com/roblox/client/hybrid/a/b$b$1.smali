.class Lcom/roblox/client/hybrid/a/b$b$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/hybrid/a/b$b;->a(Lcom/roblox/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/a/a;

.field final synthetic b:Lcom/roblox/client/hybrid/a/b$b;


# direct methods
.method constructor <init>(Lcom/roblox/client/hybrid/a/b$b;Lcom/roblox/a/a;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/b$b$1;->b:Lcom/roblox/client/hybrid/a/b$b;

    iput-object p2, p0, Lcom/roblox/client/hybrid/a/b$b$1;->a:Lcom/roblox/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    const-string v1, "returnData"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    const-string v2, "topBarHeight"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 97
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    :try_start_0
    const-string v2, "topBarHeight"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/hybrid/a/b$b$1;->a:Lcom/roblox/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 104
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
