.class Lcom/roblox/client/i/b$1;
.super Lcom/google/android/gms/ads/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/b;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "AdSessionManager"

    const-string v1, "GMA onAdClosed"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;)V

    .line 266
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/a;->onAdFailedToLoad(I)V

    .line 271
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 273
    const-string v0, "AdSessionManager"

    const-string v1, "GMA onAdFailedToLoad: errorCode = ERROR_CODE_NO_FILL"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "MobileAds"

    const-string v1, "GMAFailure"

    const-string v2, "AdNotReady"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->b(Lcom/roblox/client/i/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;Z)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->c(Lcom/roblox/client/i/b;)V

    .line 285
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;)V

    .line 286
    return-void

    .line 276
    :cond_1
    const-string v0, "AdSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMA onAdFailedToLoad: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "MobileAds"

    const-string v1, "GMAFailure"

    const-string v2, "OtherError"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/google/android/gms/ads/a;->onAdLeftApplication()V

    .line 291
    const-string v0, "AdSessionManager"

    const-string v1, "GMA onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/android/gms/ads/a;->onAdLoaded()V

    .line 303
    const-string v0, "AdSessionManager"

    const-string v1, "GMA onAdLoaded"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, "MobileAds"

    const-string v1, "GMASuccess"

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "AdSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMA onAdLoaded ... static-ad-waiting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v2}, Lcom/roblox/client/i/b;->b(Lcom/roblox/client/i/b;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->b(Lcom/roblox/client/i/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;Z)Z

    .line 309
    iget-object v0, p0, Lcom/roblox/client/i/b$1;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->d(Lcom/roblox/client/i/b;)Lcom/google/android/gms/ads/doubleclick/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/e;->c()V

    .line 311
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/google/android/gms/ads/a;->onAdOpened()V

    .line 297
    const-string v0, "AdSessionManager"

    const-string v1, "GMA onAdOpened"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method
