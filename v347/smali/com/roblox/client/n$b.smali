.class Lcom/roblox/client/n$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/n;


# direct methods
.method private constructor <init>(Lcom/roblox/client/n;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/n;Lcom/roblox/client/n$1;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/roblox/client/n$b;-><init>(Lcom/roblox/client/n;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v0}, Lcom/roblox/client/n;->a(Lcom/roblox/client/n;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 150
    const-string v0, "rbx.web"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-virtual {v0, p2}, Lcom/roblox/client/n;->b(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/roblox/client/f/f;->a()Lcom/roblox/client/f/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/roblox/client/f/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v0}, Lcom/roblox/client/n;->b(Lcom/roblox/client/n;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 156
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 142
    const-string v0, "rbx.web"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-virtual {v0, p2}, Lcom/roblox/client/n;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v0}, Lcom/roblox/client/n;->a(Lcom/roblox/client/n;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 145
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 161
    const-string v0, "rbx.web"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez p2, :cond_0

    .line 164
    const-string v0, "rbx.web"

    const-string v1, "RWF.shouldOverrideUrlLoading() urlString is null!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 336
    :goto_0
    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-virtual {v0}, Lcom/roblox/client/n;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/h;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    :cond_1
    const-string v0, "rbx.web"

    const-string v1, "RWF.shouldOverrideUrlLoading() activity is null or finishing"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 173
    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-virtual {v1}, Lcom/roblox/client/n;->alertIfNetworkNotConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v7

    .line 177
    goto :goto_0

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v1, p2}, Lcom/roblox/client/n;->a(Lcom/roblox/client/n;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v7

    .line 182
    goto :goto_0

    .line 185
    :cond_4
    invoke-static {}, Lcom/roblox/client/b;->Q()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    invoke-static {p2}, Lcom/roblox/client/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 189
    invoke-static {v0, p2}, Lcom/roblox/client/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v7

    .line 190
    goto :goto_0

    .line 194
    :cond_5
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->passwordResetCompletedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 195
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v0}, Lcom/roblox/client/n;->c(Lcom/roblox/client/n;)Lcom/roblox/client/n$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v0}, Lcom/roblox/client/n;->c(Lcom/roblox/client/n;)Lcom/roblox/client/n$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/n$a;->a()V

    :cond_6
    move v0, v7

    .line 198
    goto :goto_0

    .line 200
    :cond_7
    invoke-static {p2}, Lcom/roblox/client/RobloxSettings;->isLoginWebUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v1}, Lcom/roblox/client/n;->d(Lcom/roblox/client/n;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 201
    const-string v1, "rbx.web"

    const-string v2, "RWF.shouldOverrideUrlLoading() The URL is a LOGIN type!"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->d()Z

    move-result v1

    if-nez v1, :cond_8

    .line 205
    instance-of v1, v0, Lcom/roblox/client/ActivityNativeMain;

    if-eqz v1, :cond_8

    .line 206
    check-cast v0, Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Lcom/roblox/client/ActivityNativeMain;->m()V

    move v0, v7

    .line 207
    goto/16 :goto_0

    .line 212
    :cond_8
    const v1, 0x7f0e0051

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-static {v0}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/b;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;Z)V

    .line 216
    invoke-static {p2}, Lcom/roblox/client/RobloxSettings;->getLoginWebUrlMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/n$b$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/n$b$1;-><init>(Lcom/roblox/client/n$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/http/m;)V

    move v0, v7

    .line 233
    goto/16 :goto_0

    .line 236
    :cond_9
    iget-object v1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v1}, Lcom/roblox/client/n;->b(Lcom/roblox/client/n;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v1, p2, v7}, Lcom/roblox/client/n;->a(Lcom/roblox/client/n;Ljava/lang/String;Z)V

    .line 246
    const-string v1, "/games/start?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 248
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->deviceNotSupportedString()Ljava/lang/String;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_a

    .line 251
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->deviceNotSupportedSkippable()Z

    move-result v1

    if-nez v1, :cond_a

    .line 253
    iget-object v1, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    const v2, 0x7f0e0132

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/n;->alertFormatted(I[Ljava/lang/Object;)V

    move v0, v7

    .line 254
    goto/16 :goto_0

    .line 258
    :cond_a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 262
    :try_start_0
    const-string v0, "placeid"

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 267
    :goto_1
    :try_start_1
    const-string v4, "userID"

    invoke-virtual {v8, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 270
    :goto_2
    const-string v9, "accessCode"

    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 271
    const-string v10, "gameInstanceId"

    invoke-virtual {v8, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11, v9, v8, v12}, Lcom/roblox/client/game/a;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/roblox/client/game/a;

    move-result-object v8

    .line 278
    iget-object v9, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    const v10, 0x7f0e018e

    invoke-virtual {v9, v10}, Lcom/roblox/client/n;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 279
    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    cmp-long v0, v4, v2

    if-nez v0, :cond_b

    .line 280
    const-string v0, "UnexpectedError"

    const-string v1, "Missing placeid and userID."

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-virtual {v0, v9}, Lcom/roblox/client/n;->alertMessageFromServerOkButton(Ljava/lang/String;)V

    move v0, v7

    .line 282
    goto/16 :goto_0

    .line 263
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    .line 268
    :catch_1
    move-exception v4

    move-wide v4, v2

    goto :goto_2

    .line 284
    :cond_b
    invoke-virtual {v8}, Lcom/roblox/client/game/a;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 285
    const-string v0, "rbx.web"

    const-string v1, "Game join request type not set."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-virtual {v0, v9}, Lcom/roblox/client/n;->alertMessageFromServerOkButton(Ljava/lang/String;)V

    move v0, v6

    .line 287
    goto/16 :goto_0

    .line 292
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    const-string v1, "game_init_params"

    invoke-static {v8}, Lcom/roblox/client/game/a;->a(Lcom/roblox/client/game/a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 294
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/i/e;->a(ILandroid/os/Bundle;)V

    move v0, v7

    .line 296
    goto/16 :goto_0

    .line 298
    :cond_d
    const-string v1, "mobile-app-upgrades/buy?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 300
    check-cast v0, Lcom/roblox/client/k;

    .line 302
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 304
    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v0}, Lcom/roblox/client/k;->t()Lcom/roblox/client/purchase/google/b;

    move-result-object v3

    .line 315
    if-nez v3, :cond_e

    .line 316
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    const v1, 0x7f0e01ba

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->alertOk(I)V

    .line 317
    const-string v0, "GoogleStoreInitiate"

    const-string v1, "WebView"

    const-string v2, "FailedOldAndroidVersion"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v7

    .line 330
    goto/16 :goto_0

    .line 320
    :cond_e
    iget-object v4, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v4}, Lcom/roblox/client/n;->e(Lcom/roblox/client/n;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "purchaseStart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    iget-object v4, v4, Lcom/roblox/client/n;->c:Lcom/roblox/client/purchase/c;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/roblox/client/purchase/c;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 323
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    const v1, 0x7f0e01b8

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->alertOk(I)V

    .line 324
    const-string v0, "GoogleStoreInitiate"

    const-string v1, "WebView"

    const-string v2, "FailedPlayStoreNotSetUp"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 326
    :cond_f
    const-string v0, "GoogleStoreInitiate"

    const-string v1, "WebView"

    const-string v2, "Started"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 333
    :cond_10
    iget-object v0, p0, Lcom/roblox/client/n$b;->a:Lcom/roblox/client/n;

    invoke-static {v0}, Lcom/roblox/client/n;->f(Lcom/roblox/client/n;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v7

    .line 336
    goto/16 :goto_0
.end method
