.class public Lcom/roblox/client/v$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/v;


# direct methods
.method protected constructor <init>(Lcom/roblox/client/v;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 417
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/roblox/client/b;->bU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    invoke-static {}, Lcom/roblox/platform/http/g;->a()Lcom/roblox/platform/http/g;

    move-result-object p1

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/roblox/platform/http/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {p1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/v;)Landroidx/j/a/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/j/a/c;->setRefreshing(Z)V

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageFinished. url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.web"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {p1, p2}, Lcom/roblox/client/v;->e(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/roblox/client/n/d;->a()Lcom/roblox/client/n/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/roblox/client/n/d;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    iget-object p1, p1, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->reload()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-> "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "rbx.web"

    invoke-static {p3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {p1, p2}, Lcom/roblox/client/v;->d(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {p1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/v;)Landroidx/j/a/c;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/j/a/c;->setRefreshing(Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "rbx.purchaseflow"

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rbx.web"

    invoke-static {v4, v3}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "RWF.shouldOverrideUrlLoading() urlString is null!"

    .line 214
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 218
    :cond_0
    iget-object v5, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {v5}, Lcom/roblox/client/v;->r()Landroidx/fragment/app/c;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_12

    .line 219
    invoke-virtual {v5}, Landroidx/fragment/app/c;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    .line 226
    :cond_1
    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {v7}, Lcom/roblox/client/v;->ap()Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    .line 230
    :cond_2
    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v7, v1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/v;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v6

    .line 235
    :cond_3
    invoke-static {}, Lcom/roblox/client/b;->C()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 238
    invoke-static/range {p2 .. p2}, Lcom/roblox/client/x;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 239
    invoke-static {v5, v1}, Lcom/roblox/client/x;->b(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 245
    :cond_4
    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v7, v1}, Lcom/roblox/client/v;->b(Lcom/roblox/client/v;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v1, "Navigating social media Link..."

    .line 246
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 250
    :cond_5
    invoke-static {}, Lcom/roblox/client/u;->ag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 251
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v1}, Lcom/roblox/client/v;->b(Lcom/roblox/client/v;)Lcom/roblox/client/v$b;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 252
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v1}, Lcom/roblox/client/v;->b(Lcom/roblox/client/v;)Lcom/roblox/client/v$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/v$b;->a()V

    :cond_6
    return v6

    .line 256
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/roblox/client/u;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v7}, Lcom/roblox/client/v;->c(Lcom/roblox/client/v;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v2, "RWF.shouldOverrideUrlLoading() The URL is a LOGIN type!"

    .line 257
    invoke-static {v4, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {v2}, Lcom/roblox/client/v;->p()Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/roblox/client/o$j;->Authentication_Login_Response_SessionExpiredLoginAgain:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v7, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/roblox/client/v;->a(Ljava/lang/String;I)V

    .line 262
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/s/c$e;->d:Lcom/roblox/client/s/c$e;

    invoke-virtual {v2, v5, v3}, Lcom/roblox/client/s/c;->a(Landroid/app/Activity;Lcom/roblox/client/s/c$e;)V

    .line 264
    invoke-static/range {p2 .. p2}, Lcom/roblox/client/u;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/v$c$1;

    invoke-direct {v3, v0, v1}, Lcom/roblox/client/v$c$1;-><init>(Lcom/roblox/client/v$c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/http/m;)V

    return v6

    .line 284
    :cond_8
    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    iget-object v7, v7, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/roblox/client/hybrid/RBHybridWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v7, v1, v6}, Lcom/roblox/client/v;->a(Lcom/roblox/client/v;Ljava/lang/String;Z)V

    const-string v7, "/games/start?"

    .line 294
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 296
    invoke-static {}, Lcom/roblox/client/u;->ap()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 299
    invoke-static {}, Lcom/roblox/client/u;->aq()Z

    move-result v5

    if-nez v5, :cond_9

    .line 301
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    sget v4, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_UnsupportedDevice:I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/roblox/client/v;->b(I[Ljava/lang/Object;)V

    return v6

    .line 306
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v7, -0x1

    :try_start_0
    const-string v2, "placeid"

    .line 310
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v9, v7

    :goto_0
    :try_start_1
    const-string v2, "userID"

    .line 315
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-wide v11, v7

    :goto_1
    const-string v2, "accessCode"

    .line 318
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "gameInstanceId"

    .line 319
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 322
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v17, 0x0

    const-string v18, "WebView"

    invoke-static/range {v13 .. v18}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v1

    .line 326
    iget-object v2, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    sget v5, Lcom/roblox/client/o$j;->Game_Launch_Response_ErrorJoiningGame:I

    invoke-virtual {v2, v5}, Lcom/roblox/client/v;->a(I)Ljava/lang/String;

    move-result-object v2

    cmp-long v5, v9, v7

    if-nez v5, :cond_a

    cmp-long v5, v11, v7

    if-nez v5, :cond_a

    const-string v1, "UnexpectedError"

    const-string v3, "Missing placeid and userID."

    .line 328
    invoke-static {v1, v3}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {v1, v2}, Lcom/roblox/client/v;->b(Ljava/lang/String;)V

    return v6

    .line 332
    :cond_a
    invoke-virtual {v1}, Lcom/roblox/client/game/h;->g()I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_b

    const-string v1, "Game join request type not set."

    .line 333
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-virtual {v1, v2}, Lcom/roblox/client/v;->b(Ljava/lang/String;)V

    return v3

    .line 340
    :cond_b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 341
    invoke-static {v1}, Lcom/roblox/client/game/h;->a(Lcom/roblox/client/game/h;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "game_init_params"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 342
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object v1

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2}, Lcom/roblox/client/s/e;->a(ILandroid/os/Bundle;)V

    return v6

    :cond_c
    const-string v4, "mobile-app-upgrades/buy?"

    .line 346
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 348
    move-object v12, v5

    check-cast v12, Lcom/roblox/client/q;

    .line 350
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v10

    .line 351
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "id"

    .line 352
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 366
    invoke-static {v12}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v9

    const-string v4, "WebView"

    const-string v5, "GoogleStoreInitiate"

    if-nez v9, :cond_d

    .line 368
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    sget v2, Lcom/roblox/client/o$j;->Purchasing_RobloxProducts_Response_PurchaseUpdateAndroidVersion:I

    invoke-virtual {v1, v2}, Lcom/roblox/client/v;->d(I)V

    const-string v1, "FailedOldAndroidVersion"

    .line 369
    invoke-static {v5, v4, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 372
    :cond_d
    iget-object v7, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v7}, Lcom/roblox/client/v;->e(Lcom/roblox/client/v;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "purchaseStart"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/roblox/client/b;->cf()Z

    move-result v7

    if-eqz v7, :cond_e

    :try_start_2
    const-string v3, "recurring"

    .line 378
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "UnsupportedOperationException thrown while parsing recurring parameter for purchase url"

    .line 382
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    const-string v1, "NullPointerException thrown while parsing recurring parameter for purchase url"

    .line 380
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v14, v3

    goto :goto_3

    :cond_e
    const/4 v14, 0x0

    .line 387
    :goto_3
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    iget-object v13, v1, Lcom/roblox/client/v;->ax:Lcom/roblox/client/purchase/e;

    invoke-virtual/range {v9 .. v14}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/roblox/client/purchase/e;Z)Z

    move-result v1

    if-nez v1, :cond_f

    .line 388
    iget-object v1, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    sget v2, Lcom/roblox/client/o$j;->Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay:I

    invoke-virtual {v1, v2}, Lcom/roblox/client/v;->d(I)V

    const-string v1, "FailedPlayStoreNotSetUp"

    .line 389
    invoke-static {v5, v4, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string v1, "Started"

    .line 391
    invoke-static {v5, v4, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return v6

    .line 397
    :cond_10
    invoke-static/range {p2 .. p2}, Lcom/roblox/engine/jni/NativeAppBridgeInterface;->checkInAppLink(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 399
    invoke-static {}, Lcom/roblox/client/routing/a;->a()Lcom/roblox/client/routing/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/roblox/client/routing/a;->b(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/v$a;

    iget-object v3, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-direct {v2, v3}, Lcom/roblox/client/v$a;-><init>(Lcom/roblox/client/v;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return v6

    .line 404
    :cond_11
    iget-object v2, v0, Lcom/roblox/client/v$c;->a:Lcom/roblox/client/v;

    invoke-static {v2}, Lcom/roblox/client/v;->f(Lcom/roblox/client/v;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v6

    :cond_12
    :goto_5
    const-string v1, "RWF.shouldOverrideUrlLoading() activity is null or finishing"

    .line 222
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method
