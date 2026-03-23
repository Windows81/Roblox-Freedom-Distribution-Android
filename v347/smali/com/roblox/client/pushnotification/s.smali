.class public abstract Lcom/roblox/client/pushnotification/s;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/d/a/ac;

.field private b:Landroid/content/Context;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    new-instance v0, Lcom/roblox/client/util/f$a;

    invoke-direct {v0}, Lcom/roblox/client/util/f$a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/s;->a:Lcom/d/a/ac;

    .line 33
    iput-object p1, p0, Lcom/roblox/client/pushnotification/s;->b:Landroid/content/Context;

    .line 34
    iput-wide p2, p0, Lcom/roblox/client/pushnotification/s;->c:J

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {p1}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/pushnotification/s;->a:Lcom/d/a/ac;

    .line 70
    invoke-virtual {v1, v2}, Lcom/d/a/x;->a(Lcom/d/a/ac;)Lcom/d/a/x;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/pushnotification/s$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/pushnotification/s$1;-><init>(Lcom/roblox/client/pushnotification/s;Landroid/widget/ImageView;)V

    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/d/a/x;->a(Landroid/widget/ImageView;Lcom/d/a/e;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 39
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/pushnotification/s;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/pushnotification/o;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/roblox/client/pushnotification/s;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 41
    iget-wide v2, p0, Lcom/roblox/client/pushnotification/s;->c:J

    invoke-static {v2, v3}, Lcom/roblox/client/RobloxSettings;->NotificationUserProfileImageUrl(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v6}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 44
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "Url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/pushnotification/s;->c:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/roblox/client/pushnotification/o;->a(JLjava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/roblox/client/pushnotification/s;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/pushnotification/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/pushnotification/s;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/s;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/s;->a(Ljava/lang/String;)V

    return-void
.end method
