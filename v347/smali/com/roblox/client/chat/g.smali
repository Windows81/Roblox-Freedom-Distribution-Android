.class public Lcom/roblox/client/chat/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/g$a;,
        Lcom/roblox/client/chat/g$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:[Lcom/roblox/client/chat/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/roblox/client/chat/g$a;

    iput-object v0, p0, Lcom/roblox/client/chat/g;->h:[Lcom/roblox/client/chat/g$a;

    .line 55
    iput-object p1, p0, Lcom/roblox/client/chat/g;->a:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/g;->c:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/g;->d:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/g;->e:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method private a(Lcom/roblox/client/chat/a/m;)Lcom/roblox/client/chat/a/m;
    .locals 4

    .prologue
    .line 330
    if-eqz p1, :cond_1

    .line 331
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/n;->a(J)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method private a(I)Lcom/roblox/client/chat/g$a;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/roblox/client/chat/g;->h:[Lcom/roblox/client/chat/g$a;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/roblox/client/chat/g;->h:[Lcom/roblox/client/chat/g$a;

    new-instance v1, Lcom/roblox/client/chat/g$a;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/chat/g$a;-><init>(Lcom/roblox/client/chat/g;I)V

    aput-object v1, v0, p1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/g;->h:[Lcom/roblox/client/chat/g$a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private a(Lcom/roblox/client/chat/a/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    instance-of v0, p1, Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/roblox/client/chat/a/d;

    .line 113
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :cond_0
    instance-of v0, p1, Lcom/roblox/client/chat/a/m;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Lcom/roblox/client/chat/a/m;

    .line 117
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILcom/roblox/client/chat/g$b;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 407
    :pswitch_2
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 408
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 412
    :pswitch_3
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 413
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p2, Lcom/roblox/client/chat/g$b;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V
    .locals 4

    .prologue
    const v3, 0x7f070706

    const/4 v2, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/roblox/client/chat/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v0

    .line 376
    invoke-direct {p0, p3}, Lcom/roblox/client/chat/g;->a(I)Lcom/roblox/client/chat/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(Lcom/d/a/ac;)Lcom/d/a/x;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v3}, Lcom/d/a/x;->a(I)Lcom/d/a/x;

    move-result-object v0

    .line 378
    invoke-virtual {v0, p2}, Lcom/d/a/x;->a(Landroid/widget/ImageView;)V

    .line 379
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 361
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->e:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 362
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->f:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-direct {p0, p3, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 363
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->g:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-direct {p0, p4, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 364
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->h:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, p5, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 365
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->i:Landroid/widget/ImageView;

    const/4 v1, 0x5

    invoke-direct {p0, p6, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 366
    iget-object v0, p8, Lcom/roblox/client/chat/g$b;->j:Landroid/widget/ImageView;

    const/4 v1, 0x6

    invoke-direct {p0, p7, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Landroid/widget/ImageView;I)V

    .line 367
    return-void
.end method

.method private a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 356
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 357
    return-void
.end method

.method private a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 352
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 353
    return-void
.end method

.method private a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 348
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 349
    return-void
.end method

.method private a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 345
    return-void
.end method

.method private a(Lcom/roblox/client/chat/g$b;Lcom/roblox/client/chat/a/d;)V
    .locals 6

    .prologue
    .line 232
    invoke-virtual {p2}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/roblox/client/chat/a/a;->d(J)Lcom/roblox/client/chat/a/h;

    move-result-object v3

    .line 236
    const-string v0, ""

    .line 237
    if-eqz v3, :cond_1

    .line 239
    invoke-static {}, Lcom/roblox/client/chat/a/h;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/h;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v3}, Lcom/roblox/client/chat/a/h;->i()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 243
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 244
    :goto_1
    invoke-virtual {p2}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v4, "OneToOneConversation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 247
    invoke-virtual {p2}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 249
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/g$b;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    invoke-direct {p0, p1, v3, v4}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/g$b;ZLjava/util/ArrayList;)V

    .line 251
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/chat/g$b;Lcom/roblox/client/chat/a/m;)V
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p2}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {p2}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/n;->d(J)Ljava/lang/String;

    move-result-object v1

    .line 226
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/g$b;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/chat/g;->b(Lcom/roblox/client/chat/g$b;Lcom/roblox/client/chat/a/m;)V

    .line 228
    return-void
.end method

.method private a(Lcom/roblox/client/chat/g$b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p1, Lcom/roblox/client/chat/g$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    if-nez p4, :cond_0

    .line 258
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 260
    iget-object v1, p1, Lcom/roblox/client/chat/g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p1, Lcom/roblox/client/chat/g$b;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/roblox/client/chat/g;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p1, Lcom/roblox/client/chat/g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p1, Lcom/roblox/client/chat/g$b;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/roblox/client/chat/g;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/chat/g$b;ZLjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/chat/g$b;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 272
    if-eqz p2, :cond_3

    .line 274
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v5, :cond_2

    .line 276
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    .line 285
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 288
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/n;->b(J)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/chat/g;->a(ILcom/roblox/client/chat/g$b;)V

    .line 318
    :goto_1
    return-void

    .line 279
    :cond_1
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 283
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 294
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 295
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 297
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 298
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 302
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 303
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 316
    :cond_6
    :goto_3
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/chat/g;->a(ILcom/roblox/client/chat/g$b;)V

    goto :goto_1

    .line 305
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 306
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/m;

    invoke-direct {p0, v0, v1, p1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    goto :goto_3

    .line 308
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 309
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/chat/a/m;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    goto :goto_3

    .line 311
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_6

    .line 312
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/roblox/client/chat/a/m;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    goto :goto_3
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/roblox/client/chat/g;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/g;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/roblox/client/chat/g$b;Lcom/roblox/client/chat/a/m;)V
    .locals 4

    .prologue
    .line 322
    invoke-direct {p0, p2}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;)Lcom/roblox/client/chat/a/m;

    move-result-object v0

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/m;Lcom/roblox/client/chat/g$b;)V

    .line 326
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/n;->b(J)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/chat/g;->a(ILcom/roblox/client/chat/g$b;)V

    .line 327
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/g;->g:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lcom/roblox/client/chat/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Lcom/roblox/client/chat/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/f;

    .line 142
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/f;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    instance-of v0, v0, Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/roblox/client/chat/g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 173
    new-instance v1, Lcom/roblox/client/chat/g$b;

    invoke-direct {v1, p0, v3}, Lcom/roblox/client/chat/g$b;-><init>(Lcom/roblox/client/chat/g;Lcom/roblox/client/chat/g$1;)V

    .line 174
    iput-object p2, v1, Lcom/roblox/client/chat/g$b;->a:Landroid/view/View;

    .line 175
    const v0, 0x7f080079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->b:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f080081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->c:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f080078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->d:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f08007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->e:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f08007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->f:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f08007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->g:Landroid/widget/ImageView;

    .line 181
    const v0, 0x7f08007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->h:Landroid/widget/ImageView;

    .line 182
    const v0, 0x7f080080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->i:Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f08007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->j:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f08014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->k:Landroid/view/View;

    .line 185
    const v0, 0x7f08014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/roblox/client/chat/g$b;->l:Landroid/view/View;

    .line 186
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/g$b;

    .line 191
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/g;->getItemViewType(I)I

    move-result v1

    .line 192
    if-ne v1, v4, :cond_2

    .line 193
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/m;

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/g$b;Lcom/roblox/client/chat/a/m;)V

    .line 202
    :goto_0
    instance-of v1, p3, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    move-object v1, p3

    .line 203
    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 204
    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 205
    if-ne p1, v1, :cond_3

    .line 206
    iget-object v0, v0, Lcom/roblox/client/chat/g$b;->a:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/chat/g;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    :cond_1
    :goto_1
    return-object p2

    .line 197
    :cond_2
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/d;

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/g$b;Lcom/roblox/client/chat/a/d;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, v0, Lcom/roblox/client/chat/g$b;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 213
    :cond_4
    iget-object v0, v0, Lcom/roblox/client/chat/g$b;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    invoke-direct {p0}, Lcom/roblox/client/chat/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/roblox/client/chat/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 90
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/chat/a/f;

    .line 92
    invoke-direct {p0, v1}, Lcom/roblox/client/chat/g;->a(Lcom/roblox/client/chat/a/f;)Ljava/lang/String;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/chat/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/roblox/client/chat/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 99
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method
