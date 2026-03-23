.class public Lcom/roblox/client/util/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/util/a$a;
    }
.end annotation

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
.field protected a:Landroid/content/Context;

.field protected b:Lcom/roblox/client/util/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/roblox/client/util/a$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/roblox/client/util/a;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/roblox/client/util/a;->b:Lcom/roblox/client/util/a$a;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    const-string v0, ""

    .line 37
    const/4 v1, 0x0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/util/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/a$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 62
    :cond_0
    :goto_1
    const-string v1, "AdvertisingIdAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertisingId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    goto :goto_0

    .line 45
    :catch_1
    move-exception v2

    goto :goto_0

    .line 41
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/roblox/client/util/a;->b:Lcom/roblox/client/util/a$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/util/a$a;->a(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/util/a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/util/a;->a(Ljava/lang/String;)V

    return-void
.end method
