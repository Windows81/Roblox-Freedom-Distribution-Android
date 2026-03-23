.class Lcom/roblox/client/startup/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/startup/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .line 532
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const-string v0, "FinishRequestDeviceInfoFailure"

    .line 533
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    const-string v0, "SSLHandshakeException in getting BrowserTrackerId"

    invoke-static {p1, v0}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    const-string v0, "BTID with response code not 200"

    invoke-static {p1, v0}, Lcom/roblox/client/startup/c;->b(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    .line 539
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->k(Lcom/roblox/client/startup/c;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-AppLogin-BrowserTracker-Failed"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "FinishRequestDeviceInfo"

    .line 542
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 545
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "browserTrackerId"

    .line 546
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->k(Lcom/roblox/client/startup/c;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v2, "Android-AppLogin-BrowserTracker-Success"

    invoke-virtual {p1, v2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserTrackerIdCallback: Got BTID = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "InitHelper"

    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/j;->a(J)V

    .line 560
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/roblox/abtesting/a;->a(J)V

    .line 562
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->l(Lcom/roblox/client/startup/c;)V

    .line 564
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->m(Lcom/roblox/client/startup/c;)V

    :goto_1
    return-void

    .line 548
    :catch_0
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->k(Lcom/roblox/client/startup/c;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-AppLogin-BrowserTracker-JsonFailed"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 551
    iget-object p1, p0, Lcom/roblox/client/startup/c$9;->a:Lcom/roblox/client/startup/c;

    const-string v0, "BTID parse exc."

    invoke-static {p1, v0}, Lcom/roblox/client/startup/c;->b(Lcom/roblox/client/startup/c;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    return-void
.end method
