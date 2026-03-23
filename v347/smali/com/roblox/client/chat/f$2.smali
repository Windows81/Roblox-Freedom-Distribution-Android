.class Lcom/roblox/client/chat/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/f;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/d",
        "<",
        "Lb/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v7, 0x7f0e0157

    .line 387
    :try_start_0
    invoke-static {p2}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v2, "resultType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v3, "statusMessage"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    sget-object v4, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renameGroupConversation() payload:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p2}, Ld/l;->a()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_3

    .line 395
    const-string v0, "Success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 397
    const-string v2, "isDefaultTitle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 398
    const-string v2, "conversationTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v2}, Lcom/roblox/client/chat/f;->h(Lcom/roblox/client/chat/f;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v2, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v2}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v2}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/roblox/client/chat/a/d;->a(Z)V

    .line 402
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v0}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/d;->a(Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string v0, "Moderated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v1, v0}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/f;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v1}, Lcom/roblox/client/chat/f;->h(Lcom/roblox/client/chat/f;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v2}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    invoke-static {}, Lcom/roblox/client/chat/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    invoke-static {}, Lcom/roblox/client/chat/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse Chat Rename Title Backend response"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-virtual {v1, v7}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/f;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v0}, Lcom/roblox/client/chat/f;->h(Lcom/roblox/client/chat/f;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v1}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    const v1, 0x7f0e0157

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    const v2, 0x7f0e0157

    invoke-virtual {v1, v2}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/f;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v0}, Lcom/roblox/client/chat/f;->h(Lcom/roblox/client/chat/f;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v1}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    invoke-static {}, Lcom/roblox/client/chat/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ld/b;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/roblox/client/chat/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to Rename Title"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    const v2, 0x7f0e0157

    invoke-virtual {v1, v2}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/f;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v0}, Lcom/roblox/client/chat/f;->h(Lcom/roblox/client/chat/f;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/chat/f$2;->a:Lcom/roblox/client/chat/f;

    invoke-static {v1}, Lcom/roblox/client/chat/f;->i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method
