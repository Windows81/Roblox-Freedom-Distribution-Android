.class Lcom/roblox/client/pushnotification/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/pushnotification/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/pushnotification/r;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/r;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/roblox/client/pushnotification/r$1;->a:Lcom/roblox/client/pushnotification/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/pushnotification/b/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/j;)V
    .locals 4

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/j;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    :try_start_0
    invoke-virtual {p5, v0, p2}, Lcom/roblox/client/pushnotification/j;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 72
    const-string v1, "onMetadataRetrieved"

    const-string v2, "type"

    .line 73
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notificationId"

    .line 74
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v1, p3, v2, v0, p4}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
