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

    .line 63
    iput-object p1, p0, Lcom/roblox/client/pushnotification/r$1;->a:Lcom/roblox/client/pushnotification/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/pushnotification/b/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/j;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/j;->a()Lorg/json/JSONObject;

    move-result-object p1

    .line 70
    :try_start_0
    invoke-virtual {p5, p1, p2}, Lcom/roblox/client/pushnotification/j;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string p2, "onMetadataRetrieved"

    const-string p5, "type"

    .line 73
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "notificationId"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p2, p3, p5, p1, p4}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
