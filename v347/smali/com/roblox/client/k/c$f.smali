.class public Lcom/roblox/client/k/c$f;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/k/c$f$a;,
        Lcom/roblox/client/k/c$f$b;,
        Lcom/roblox/client/k/c$f$d;,
        Lcom/roblox/client/k/c$f$f;,
        Lcom/roblox/client/k/c$f$c;,
        Lcom/roblox/client/k/c$f$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k/c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/c$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/c$g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Lcom/roblox/client/k/c$f;->a:Lcom/roblox/client/k/c;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/k/c$f;->b:I

    .line 301
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/k/c$f;->c:I

    .line 302
    const/4 v0, 0x2

    iput v0, p0, Lcom/roblox/client/k/c$f;->d:I

    .line 303
    const/4 v0, 0x3

    iput v0, p0, Lcom/roblox/client/k/c$f;->e:I

    .line 304
    const/4 v0, 0x4

    iput v0, p0, Lcom/roblox/client/k/c$f;->f:I

    .line 309
    iput-object p2, p0, Lcom/roblox/client/k/c$f;->g:Ljava/util/ArrayList;

    .line 310
    return-void
.end method

.method private a(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 355
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 358
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 360
    const/4 v1, -0x2

    if-ne p3, v1, :cond_0

    if-eq p3, v2, :cond_1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/k/c$f;->a:Lcom/roblox/client/k/c;

    invoke-virtual {v1}, Lcom/roblox/client/k/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v1

    float-to-int p3, v1

    .line 364
    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/roblox/client/k/c$f;->a:Lcom/roblox/client/k/c;

    invoke-virtual {v1}, Lcom/roblox/client/k/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v1

    const-string v2, "MORE_MENU_PREFS"

    invoke-virtual {v1, v2}, Lcom/roblox/client/util/m;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    const-string v2, "CREATE_GAMES_TAG"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PREF_CREATE_GAMES_NEW_LABEL_SHOWN"

    .line 372
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 371
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/roblox/client/k/c$f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/roblox/client/k/c$f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/k/c$g;

    .line 317
    instance-of v1, v0, Lcom/roblox/client/k/c$e;

    if-eqz v1, :cond_0

    .line 319
    const/4 v0, 0x2

    .line 332
    :goto_0
    return v0

    .line 321
    :cond_0
    instance-of v1, v0, Lcom/roblox/client/k/c$d;

    if-eqz v1, :cond_1

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    instance-of v1, v0, Lcom/roblox/client/k/c$c;

    if-eqz v1, :cond_2

    .line 325
    const/4 v0, 0x3

    goto :goto_0

    .line 327
    :cond_2
    instance-of v0, v0, Lcom/roblox/client/k/c$i;

    if-eqz v0, :cond_3

    .line 328
    const/4 v0, 0x4

    goto :goto_0

    .line 332
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/roblox/client/k/c$f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/k/c$g;

    .line 379
    invoke-virtual {p0, p2}, Lcom/roblox/client/k/c$f;->getItemViewType(I)I

    move-result v4

    .line 380
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 381
    check-cast p1, Lcom/roblox/client/k/c$f$b;

    .line 382
    check-cast v0, Lcom/roblox/client/k/c$c;

    .line 383
    iget-object v3, v0, Lcom/roblox/client/k/c$c;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p1, Lcom/roblox/client/k/c$f$b;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/roblox/client/k/c$c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_0
    iget v3, v0, Lcom/roblox/client/k/c$c;->e:I

    if-nez v3, :cond_2

    .line 389
    iget-object v3, p1, Lcom/roblox/client/k/c$f$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    :goto_1
    invoke-virtual {v0}, Lcom/roblox/client/k/c$c;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    iget-object v2, p1, Lcom/roblox/client/k/c$f$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/roblox/client/k/c$c;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p1, Lcom/roblox/client/k/c$f$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :goto_2
    invoke-virtual {p1, v0}, Lcom/roblox/client/k/c$f$b;->a(Lcom/roblox/client/k/c$c;)V

    .line 432
    :cond_0
    :goto_3
    return-void

    .line 386
    :cond_1
    iget-object v3, p1, Lcom/roblox/client/k/c$f$b;->b:Landroid/widget/TextView;

    iget v4, v0, Lcom/roblox/client/k/c$c;->d:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v3, p1, Lcom/roblox/client/k/c$f$b;->c:Landroid/widget/ImageView;

    iget v4, v0, Lcom/roblox/client/k/c$c;->e:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    iget-object v3, p1, Lcom/roblox/client/k/c$f$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 397
    :cond_3
    iget-object v3, v0, Lcom/roblox/client/k/c$c;->f:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/roblox/client/k/c$f;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    iget-object v2, p1, Lcom/roblox/client/k/c$f$b;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/roblox/client/k/c$f;->a:Lcom/roblox/client/k/c;

    const v4, 0x7f0e010f

    invoke-virtual {v3, v4}, Lcom/roblox/client/k/c;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v2, p1, Lcom/roblox/client/k/c$f$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 401
    :cond_4
    iget-object v1, p1, Lcom/roblox/client/k/c$f$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 405
    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 406
    check-cast p1, Lcom/roblox/client/k/c$f$d;

    .line 407
    check-cast v0, Lcom/roblox/client/k/c$e;

    .line 408
    iget-object v1, v0, Lcom/roblox/client/k/c$e;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 409
    iget-object v1, p1, Lcom/roblox/client/k/c$f$d;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/roblox/client/k/c$e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_4
    invoke-virtual {p1, v0}, Lcom/roblox/client/k/c$f$d;->a(Lcom/roblox/client/k/c$c;)V

    goto :goto_3

    .line 411
    :cond_6
    iget-object v1, p1, Lcom/roblox/client/k/c$f$d;->b:Landroid/widget/TextView;

    iget v2, v0, Lcom/roblox/client/k/c$e;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 415
    :cond_7
    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 416
    check-cast p1, Lcom/roblox/client/k/c$f$c;

    .line 417
    check-cast v0, Lcom/roblox/client/k/c$d;

    .line 418
    iget-object v3, p1, Lcom/roblox/client/k/c$f$c;->a:Landroid/view/View;

    iget-boolean v0, v0, Lcom/roblox/client/k/c$d;->a:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_5

    .line 420
    :cond_9
    if-nez v4, :cond_c

    .line 421
    check-cast p1, Lcom/roblox/client/k/c$f$e;

    .line 422
    check-cast v0, Lcom/roblox/client/k/c$h;

    .line 423
    iget-object v4, p1, Lcom/roblox/client/k/c$f$e;->a:Landroid/view/View;

    iget-boolean v2, v0, Lcom/roblox/client/k/c$h;->a:Z

    if-eqz v2, :cond_a

    move v2, v1

    :goto_6
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v2, p1, Lcom/roblox/client/k/c$f$e;->b:Landroid/view/View;

    iget-boolean v0, v0, Lcom/roblox/client/k/c$h;->b:Z

    if-eqz v0, :cond_b

    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    move v2, v3

    .line 423
    goto :goto_6

    :cond_b
    move v1, v3

    .line 424
    goto :goto_7

    .line 426
    :cond_c
    if-ne v4, v3, :cond_0

    .line 427
    check-cast p1, Lcom/roblox/client/k/c$f$f;

    .line 428
    check-cast v0, Lcom/roblox/client/k/c$i;

    .line 429
    iget-object v1, p1, Lcom/roblox/client/k/c$f$f;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/roblox/client/k/c$i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p1, Lcom/roblox/client/k/c$f$f;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/roblox/client/k/c$i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 339
    packed-switch p2, :pswitch_data_0

    .line 350
    new-instance v0, Lcom/roblox/client/k/c$f$e;

    const v1, 0x7f0a007b

    const/16 v2, 0x1e

    invoke-direct {p0, p1, v1, v2}, Lcom/roblox/client/k/c$f;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/k/c$f$e;-><init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    new-instance v0, Lcom/roblox/client/k/c$f$b;

    const v1, 0x7f0a007d

    invoke-direct {p0, p1, v1, v2}, Lcom/roblox/client/k/c$f;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/k/c$f$b;-><init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V

    goto :goto_0

    .line 343
    :pswitch_1
    new-instance v0, Lcom/roblox/client/k/c$f$d;

    const v1, 0x7f0a007a

    const/16 v2, 0x2d

    invoke-direct {p0, p1, v1, v2}, Lcom/roblox/client/k/c$f;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/k/c$f$d;-><init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V

    goto :goto_0

    .line 345
    :pswitch_2
    new-instance v0, Lcom/roblox/client/k/c$f$c;

    const v1, 0x7f0a007c

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/roblox/client/k/c$f;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/k/c$f$c;-><init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V

    goto :goto_0

    .line 347
    :pswitch_3
    new-instance v0, Lcom/roblox/client/k/c$f$f;

    const v1, 0x7f0a0079

    invoke-direct {p0, p1, v1, v2}, Lcom/roblox/client/k/c$f;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/k/c$f$f;-><init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
