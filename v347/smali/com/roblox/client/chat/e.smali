.class public Lcom/roblox/client/chat/e;
.super Lcom/roblox/client/chat/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/roblox/client/chat/ConversationActivity$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/e$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/roblox/client/chat/c;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v7/widget/Toolbar;

.field private g:Landroid/widget/ScrollView;

.field private h:Lorg/apmem/tools/layouts/FlowLayout;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/String;

.field private final p:I

.field private q:Lcom/roblox/client/chat/a/b;

.field private r:Lcom/roblox/client/chat/e$a;

.field private s:J

.field private t:I

.field private u:I

.field private v:Lcom/roblox/client/chat/k;

.field private w:Lcom/roblox/client/h/o$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/roblox/client/chat/b;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->o:Ljava/lang/String;

    .line 80
    const/16 v0, 0x32

    iput v0, p0, Lcom/roblox/client/chat/e;->p:I

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    .line 91
    new-instance v0, Lcom/roblox/client/chat/e$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/e$1;-><init>(Lcom/roblox/client/chat/e;)V

    iput-object v0, p0, Lcom/roblox/client/chat/e;->w:Lcom/roblox/client/h/o$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/a/b;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/chat/e;Lcom/roblox/client/chat/k;)Lcom/roblox/client/chat/k;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/roblox/client/chat/e;->v:Lcom/roblox/client/chat/k;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/chat/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/roblox/client/chat/e;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(JZ)V
    .locals 5

    .prologue
    .line 531
    new-instance v1, Lcom/roblox/client/chat/f;

    invoke-direct {v1}, Lcom/roblox/client/chat/f;-><init>()V

    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 533
    const-string v2, "CONVERSATION_ID_EXTRA"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 534
    const-string v2, "SHOW_SHADOWS_EXTRA"

    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->b()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    const-string v2, "SHOW_RENAME_TITLE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/f;->setArguments(Landroid/os/Bundle;)V

    .line 537
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v2

    .line 538
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080191

    :goto_0
    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 539
    invoke-virtual {v2}, Landroid/support/v4/app/p;->c()I

    .line 540
    return-void

    .line 538
    :cond_0
    const v0, 0x7f080197

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/chat/e;J)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/chat/e;->c(J)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/e;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/chat/e;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    .prologue
    const v6, 0x7f080054

    const/4 v5, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0033

    iget-object v2, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 342
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 343
    const v1, 0x7f0800ef

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 344
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/roblox/client/chat/e;->t:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 347
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0, v2}, Lorg/apmem/tools/layouts/FlowLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/roblox/client/chat/e;->g:Landroid/widget/ScrollView;

    new-instance v1, Lcom/roblox/client/chat/e$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/e$7;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 357
    iget-object v0, p0, Lcom/roblox/client/chat/e;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 358
    return-void
.end method

.method private a(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 362
    :goto_0
    if-ge v2, v3, :cond_1

    .line 363
    iget-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0, v2}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080054

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 364
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 365
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0, v2}, Lorg/apmem/tools/layouts/FlowLayout;->removeViewAt(I)V

    .line 367
    const/4 v0, 0x1

    .line 371
    :goto_1
    return v0

    .line 362
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 371
    goto :goto_1
.end method

.method static synthetic b(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    return-object v0
.end method

.method private b(J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 385
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 387
    instance-of v3, v0, Lcom/roblox/client/chat/a/m;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 385
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 391
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/chat/e;J)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/chat/e;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/k;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->v:Lcom/roblox/client/chat/k;

    return-object v0
.end method

.method private c(J)V
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v1}, Lcom/roblox/client/chat/c;->a()I

    move-result v1

    invoke-static {}, Lcom/roblox/client/b;->K()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e015a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/e;->f()I

    move-result v1

    if-gtz v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v2

    .line 406
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 407
    :goto_1
    if-ge v1, v2, :cond_3

    .line 408
    iget-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080054

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 409
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 410
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 414
    :cond_3
    cmp-long v0, p1, v6

    if-eqz v0, :cond_4

    .line 415
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_4
    iget-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    cmp-long v0, p1, v6

    if-eqz v0, :cond_6

    .line 419
    :cond_5
    new-instance v0, Lcom/roblox/client/h/j;

    new-instance v1, Lcom/roblox/client/chat/e$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/e$8;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-direct {v0, v3, v1}, Lcom/roblox/client/h/j;-><init>(Ljava/util/ArrayList;Lcom/roblox/client/h/j$a;)V

    .line 426
    invoke-virtual {v0}, Lcom/roblox/client/h/j;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/chat/e;->o:Ljava/lang/String;

    .line 427
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    goto :goto_0

    .line 430
    :cond_6
    new-instance v0, Lcom/roblox/client/h/f;

    iget-wide v4, p0, Lcom/roblox/client/chat/e;->s:J

    new-instance v1, Lcom/roblox/client/chat/e$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/e$9;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-direct {v0, v4, v5, v3, v1}, Lcom/roblox/client/h/f;-><init>(JLjava/util/List;Lcom/roblox/client/h/f$a;)V

    .line 440
    invoke-virtual {v0}, Lcom/roblox/client/h/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/chat/e;->o:Ljava/lang/String;

    .line 441
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/chat/e;J)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/chat/e;->d(J)V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/chat/e;)Lcom/roblox/client/h/o$a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->w:Lcom/roblox/client/h/o$a;

    return-object v0
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/chat/e;->a(JZ)V

    .line 528
    return-void
.end method

.method static synthetic e(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/e$a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->r:Lcom/roblox/client/chat/e$a;

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/roblox/client/chat/e;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/roblox/client/chat/e;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Lcom/roblox/client/chat/e;->f()I

    move-result v2

    .line 248
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->a()I

    move-result v0

    .line 249
    add-int v3, v2, v0

    .line 251
    iget-wide v4, p0, Lcom/roblox/client/chat/e;->s:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/chat/e;->c:Ljava/lang/String;

    .line 252
    :goto_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 253
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 254
    const-string v5, " ("

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/roblox/client/b;->K()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 256
    invoke-static {}, Lcom/roblox/client/b;->K()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_0

    .line 257
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p0, Lcom/roblox/client/chat/e;->u:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v4, p0, Lcom/roblox/client/chat/e;->g:Landroid/widget/ScrollView;

    if-nez v2, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/roblox/client/chat/e;->e:Landroid/widget/TextView;

    if-lez v2, :cond_1

    const/4 v2, 0x2

    if-lt v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/chat/e;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 262
    goto :goto_1
.end method

.method static synthetic h(Lcom/roblox/client/chat/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/chat/e;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/roblox/client/chat/e;->f()I

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/roblox/client/chat/e;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/roblox/client/chat/e;->g()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/chat/e;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/roblox/client/chat/e;->g:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    return-wide v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->c()V

    .line 296
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/e;->d(J)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/h;

    iget-wide v2, p0, Lcom/roblox/client/chat/e;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/h;->a(J)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/roblox/client/chat/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 270
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/n;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/roblox/client/chat/a/b;->a(Ljava/util/List;I)V

    .line 274
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 277
    :cond_0
    iget-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/e;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    .line 283
    :cond_1
    return-void
.end method

.method public onAvatarHeadshotsRetrievedEvent(Lcom/roblox/client/e/c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 510
    return-void
.end method

.method public onChatNewConversationEvent(Lcom/roblox/client/e/g;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/roblox/client/e/g;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/roblox/client/e/g;->c()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/chat/e;->a(JZ)V

    .line 524
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 376
    const v0, 0x7f080054

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 377
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 378
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/roblox/client/chat/e;->a(J)Z

    .line 379
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/e;->b(J)V

    .line 380
    invoke-direct {p0}, Lcom/roblox/client/chat/e;->g()V

    .line 382
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/roblox/client/chat/b;->onCreate(Landroid/os/Bundle;)V

    .line 107
    new-instance v0, Lcom/roblox/client/chat/a/b;

    invoke-direct {v0}, Lcom/roblox/client/chat/a/b;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    .line 108
    new-instance v0, Lcom/roblox/client/chat/e$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/e$a;-><init>(Lcom/roblox/client/chat/e;)V

    iput-object v0, p0, Lcom/roblox/client/chat/e;->r:Lcom/roblox/client/chat/e$a;

    .line 109
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/e;->t:I

    .line 110
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/e;->u:I

    .line 111
    const v0, 0x7f0e0144

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->b:Ljava/lang/String;

    .line 112
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->c:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    .line 117
    const v0, 0x7f0a005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 118
    invoke-virtual {p0, v4}, Lcom/roblox/client/chat/e;->a(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 121
    const/4 v2, 0x0

    .line 122
    const-wide/16 v0, -0x1

    .line 124
    if-eqz v3, :cond_4

    .line 125
    const-string v0, "SHOW_SHADOWS_EXTRA"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 126
    const-string v0, "CONVERSATION_ID_EXTRA"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/e;->s:J

    .line 127
    const-string v0, "ONE_ON_ONE_CHAT_PARTICIPANT_ID"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    .line 131
    :goto_0
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    .line 132
    iget-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f05004b

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 133
    iget-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f070725

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 134
    iget-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    new-instance v5, Lcom/roblox/client/chat/e$2;

    invoke-direct {v5, p0}, Lcom/roblox/client/chat/e$2;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0800eb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->l:Landroid/view/View;

    .line 142
    const v0, 0x7f080193

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->m:Landroid/view/View;

    .line 143
    const v0, 0x7f080113

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->n:Landroid/view/View;

    .line 145
    const v0, 0x7f08018a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->j:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/roblox/client/chat/e;->j:Landroid/widget/EditText;

    new-instance v5, Lcom/roblox/client/chat/e$3;

    invoke-direct {v5, p0}, Lcom/roblox/client/chat/e$3;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v0, p0, Lcom/roblox/client/chat/e;->j:Landroid/widget/EditText;

    const v5, 0x7f0e0139

    invoke-virtual {p0, v5}, Lcom/roblox/client/chat/e;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 164
    const v0, 0x7f08004f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->k:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/roblox/client/chat/e;->k:Landroid/widget/ImageView;

    new-instance v5, Lcom/roblox/client/chat/e$4;

    invoke-direct {v5, p0}, Lcom/roblox/client/chat/e$4;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v0, 0x7f080083

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->e:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/roblox/client/chat/e;->e:Landroid/widget/TextView;

    new-instance v5, Lcom/roblox/client/chat/e$5;

    invoke-direct {v5, p0, v2, v3}, Lcom/roblox/client/chat/e$5;-><init>(Lcom/roblox/client/chat/e;J)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v0, Lcom/roblox/client/chat/c;

    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/roblox/client/chat/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    .line 187
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    iget-object v2, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/c;->a(Ljava/util/ArrayList;)V

    .line 188
    iget-wide v2, p0, Lcom/roblox/client/chat/e;->s:J

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/e;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/roblox/client/chat/c;->a(Ljava/util/ArrayList;Z)V

    .line 191
    iget-object v0, p0, Lcom/roblox/client/chat/e;->e:Landroid/widget/TextView;

    const v2, 0x7f0e0133

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lcom/roblox/client/chat/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    const v0, 0x7f08010f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    .line 199
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    new-instance v2, Lcom/roblox/client/chat/e$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/e$6;-><init>(Lcom/roblox/client/chat/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/roblox/client/chat/e;->l:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/roblox/client/chat/e;->m:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/roblox/client/chat/e;->n:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const v0, 0x7f08005d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->g:Landroid/widget/ScrollView;

    .line 235
    const v0, 0x7f080063

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/e;->h:Lorg/apmem/tools/layouts/FlowLayout;

    .line 237
    invoke-direct {p0}, Lcom/roblox/client/chat/e;->g()V

    .line 239
    return-object v4

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/e;->f:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lcom/roblox/client/chat/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 230
    :cond_1
    const/16 v0, 0x8

    goto :goto_2

    .line 231
    :cond_2
    const/16 v0, 0x8

    goto :goto_3

    .line 232
    :cond_3
    const/16 v0, 0x8

    goto :goto_4

    :cond_4
    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    goto/16 :goto_0
.end method

.method public onFriendsListRetrievedEvent(Lcom/roblox/client/e/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p1}, Lcom/roblox/client/e/l;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    invoke-virtual {p1}, Lcom/roblox/client/e/l;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/e/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/chat/a/b;->a(Ljava/util/List;I)V

    .line 487
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 489
    :cond_0
    return-void
.end method

.method public onFriendshipUpdatedEvent(Lcom/roblox/client/e/m;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/roblox/client/e/m;->a()Lcom/roblox/client/chat/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/roblox/client/e/m;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    invoke-virtual {p1}, Lcom/roblox/client/e/m;->a()Lcom/roblox/client/chat/a/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/chat/a/b;->a(Ljava/lang/Object;Z)V

    .line 497
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/e/m;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/roblox/client/chat/e;->q:Lcom/roblox/client/chat/a/b;

    invoke-virtual {p1}, Lcom/roblox/client/e/m;->a()Lcom/roblox/client/chat/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onSignalRConnectivityChangeEvent(Lcom/roblox/client/e/v;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/roblox/client/chat/e;->r:Lcom/roblox/client/chat/e$a;

    invoke-virtual {v0}, Lcom/roblox/client/chat/e$a;->a()V

    .line 476
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/e;->r:Lcom/roblox/client/chat/e$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->u_()V

    .line 479
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onStart()V

    .line 449
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/roblox/client/chat/e;->r:Lcom/roblox/client/chat/e$a;

    invoke-virtual {v0}, Lcom/roblox/client/chat/e$a;->a()V

    .line 452
    iget-object v0, p0, Lcom/roblox/client/chat/e;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/e;->r:Lcom/roblox/client/chat/e$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 454
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->u_()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/e;->v:Lcom/roblox/client/chat/k;

    .line 459
    const-string v0, "chatCreateConversation"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 464
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 465
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onStop()V

    .line 467
    invoke-virtual {p0}, Lcom/roblox/client/chat/e;->e()V

    .line 468
    iget-object v0, p0, Lcom/roblox/client/chat/e;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 469
    return-void
.end method

.method public onUserStatusUpdatedEvent(Lcom/roblox/client/e/z;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/roblox/client/chat/e;->d:Lcom/roblox/client/chat/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 516
    return-void
.end method
