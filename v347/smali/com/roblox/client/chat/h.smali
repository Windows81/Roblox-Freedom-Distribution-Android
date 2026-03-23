.class public Lcom/roblox/client/chat/h;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$b;
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/roblox/client/components/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/j/c;

.field private b:Landroid/support/v7/widget/Toolbar;

.field private c:Lcom/roblox/client/chat/g;

.field private d:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/roblox/client/chat/h$a;

.field private final m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Lcom/roblox/client/components/c;

.field private r:Landroid/view/View;

.field private s:Lcom/roblox/client/chat/k;

.field private t:Lcom/roblox/client/h/o$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 97
    const/16 v0, 0x1e

    iput v0, p0, Lcom/roblox/client/chat/h;->m:I

    .line 99
    iput-object v1, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/roblox/client/chat/h;->o:Ljava/lang/String;

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/chat/h;->p:J

    .line 108
    new-instance v0, Lcom/roblox/client/chat/h$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/h$1;-><init>(Lcom/roblox/client/chat/h;)V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->t:Lcom/roblox/client/h/o$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/roblox/client/chat/h;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/roblox/client/chat/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    const-string v1, "FEATURE_EXTRA"

    const-string v2, "CHAT_CREATE_FEATURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const v1, 0xa9a7

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 588
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const v1, 0x7f01000f

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/h;->overridePendingTransition(II)V

    .line 591
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;J)V
    .locals 3

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    const v1, 0x7f0e0114

    invoke-static {p0, v0, v1}, Lcom/roblox/client/chat/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 788
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;JJ)V
    .locals 3

    .prologue
    const v2, 0x7f0e00f0

    .line 792
    invoke-static {}, Lcom/roblox/client/b;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "abusereport/embedded/chat?actionName=chat&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&redirectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profile&conversationid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    .line 796
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "abusereport/UserProfile?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&redirectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {p0, v0, v2}, Lcom/roblox/client/chat/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/chat/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 811
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    return-void
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->a:Lcom/roblox/client/j/c;

    .line 375
    iget-object v0, p0, Lcom/roblox/client/chat/h;->a:Lcom/roblox/client/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 376
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/h;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/h;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/h;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/roblox/client/chat/h;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 403
    return-void
.end method

.method private b(J)V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/chat/h;->b(JZ)V

    .line 533
    return-void
.end method

.method private b(JZ)V
    .locals 5

    .prologue
    .line 537
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    .line 538
    if-nez v0, :cond_0

    .line 540
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/e;

    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/roblox/client/h/e;-><init>(Landroid/content/Context;JZ)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 543
    :cond_0
    invoke-static {p1, p2}, Lcom/roblox/client/chat/a/d;->c(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/roblox/client/chat/h;->g:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 546
    invoke-direct {p0, p0, p1, p2}, Lcom/roblox/client/chat/h;->b(Landroid/support/v4/app/Fragment;J)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/chat/h;->a(JZ)V

    goto :goto_0
.end method

.method private b(Landroid/support/v4/app/Fragment;J)V
    .locals 4

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/roblox/client/chat/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    const-string v1, "FEATURE_EXTRA"

    const-string v2, "CHAT_FEATURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v1, "CONVERSATION_ID_EXTRA"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 578
    const v1, 0xa9a7

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 579
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const v1, 0x7f01000f

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/h;->overridePendingTransition(II)V

    .line 582
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/chat/h;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    .line 453
    if-eqz p1, :cond_2

    .line 454
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0}, Lcom/roblox/client/chat/g;->getCount()I

    move-result v4

    move v3, v2

    .line 455
    :goto_0
    if-ge v3, v4, :cond_2

    .line 456
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0, v3}, Lcom/roblox/client/chat/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/f;

    invoke-interface {v0}, Lcom/roblox/client/chat/a/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move v0, v1

    .line 463
    :goto_1
    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 466
    :cond_0
    return-void

    .line 455
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 379
    iget-object v0, p0, Lcom/roblox/client/chat/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/roblox/client/chat/h;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/roblox/client/chat/h;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->c()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/h;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/roblox/client/chat/h;->l:Lcom/roblox/client/chat/h$a;

    invoke-virtual {v0}, Lcom/roblox/client/chat/h$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/roblox/client/chat/h;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->c()V

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/roblox/client/chat/h;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 408
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->b()Lcom/roblox/client/chat/a/e;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/roblox/client/chat/a/e;

    invoke-direct {v1}, Lcom/roblox/client/chat/a/e;-><init>()V

    .line 410
    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/e;->addAll(Ljava/util/Collection;)Z

    .line 412
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 413
    invoke-virtual {v1}, Lcom/roblox/client/chat/a/e;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/d;

    .line 414
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v4

    .line 416
    const-string v5, "OneToOneConversation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 418
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    .line 419
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v6

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_2
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/n;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 432
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 434
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 435
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/chat/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 440
    iget-object v0, p0, Lcom/roblox/client/chat/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 441
    iget-object v0, p0, Lcom/roblox/client/chat/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 443
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0}, Lcom/roblox/client/chat/g;->notifyDataSetChanged()V

    .line 446
    iget-object v0, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/h;->b(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->c()V

    .line 449
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 493
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0}, Lcom/roblox/client/chat/g;->notifyDataSetChanged()V

    .line 494
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 498
    instance-of v0, v0, Lcom/roblox/client/chat/j;

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 500
    new-instance v1, Lcom/roblox/client/chat/j;

    invoke-direct {v1}, Lcom/roblox/client/chat/j;-><init>()V

    .line 501
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 502
    const-string v3, "SHOW_SHADOWS_EXTRA"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 504
    const v2, 0x7f080191

    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 505
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 507
    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 554
    iget-object v0, p0, Lcom/roblox/client/chat/h;->g:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 556
    invoke-direct {p0, p0}, Lcom/roblox/client/chat/h;->a(Landroid/support/v4/app/Fragment;)V

    .line 572
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 560
    instance-of v0, v0, Lcom/roblox/client/chat/e;

    if-nez v0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 562
    new-instance v1, Lcom/roblox/client/chat/e;

    invoke-direct {v1}, Lcom/roblox/client/chat/e;-><init>()V

    .line 563
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 564
    const-string v3, "SHOW_SHADOWS_EXTRA"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 566
    const v2, 0x7f080191

    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 567
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 569
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->g()V

    .line 570
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->c()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/roblox/client/chat/h;->l:Lcom/roblox/client/chat/h$a;

    invoke-virtual {v0}, Lcom/roblox/client/chat/h$a;->a()V

    .line 674
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/h;->l:Lcom/roblox/client/chat/h$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 675
    return-void
.end method

.method private k()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 721
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/roblox/client/chat/h;->a:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/roblox/client/chat/h;->a:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 783
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->b()V

    .line 298
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->j()V

    .line 300
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/r;

    invoke-direct {v1}, Lcom/roblox/client/h/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 301
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/chat/h;->a(JZ)V

    .line 511
    return-void
.end method

.method public a(JZ)V
    .locals 5

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 515
    instance-of v1, v0, Lcom/roblox/client/chat/f;

    if-nez v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 517
    new-instance v1, Lcom/roblox/client/chat/f;

    invoke-direct {v1}, Lcom/roblox/client/chat/f;-><init>()V

    .line 518
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 519
    const-string v3, "SHOW_SHADOWS_EXTRA"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    const-string v3, "CONVERSATION_ID_EXTRA"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 521
    const-string v3, "SHOW_RENAME_TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 522
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 523
    const v2, 0x7f080191

    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 524
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    check-cast v0, Lcom/roblox/client/chat/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/chat/f;->a(JZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLF.onChatUserFriendsSearchStringChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/g;->a(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0}, Lcom/roblox/client/chat/g;->notifyDataSetChanged()V

    .line 769
    iget-object v0, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/h;->b(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/h;->s:Lcom/roblox/client/chat/k;

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lcom/roblox/client/chat/k;

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/roblox/client/chat/h;->t:Lcom/roblox/client/h/o$a;

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/chat/k;-><init>(ILcom/roblox/client/h/o$a;)V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->s:Lcom/roblox/client/chat/k;

    .line 774
    iget-object v0, p0, Lcom/roblox/client/chat/h;->s:Lcom/roblox/client/chat/k;

    iget-object v1, p0, Lcom/roblox/client/chat/h;->l:Lcom/roblox/client/chat/h$a;

    invoke-virtual {v1}, Lcom/roblox/client/chat/h$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/k;->a(I)V

    .line 777
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->g()V

    .line 470
    iget-object v0, p0, Lcom/roblox/client/chat/h;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->h()V

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->c()V

    .line 474
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v2, Lcom/roblox/client/chat/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 480
    instance-of v2, v0, Lcom/roblox/client/components/a;

    if-eqz v2, :cond_1

    .line 481
    check-cast v0, Lcom/roblox/client/components/a;

    invoke-interface {v0}, Lcom/roblox/client/components/a;->d()Z

    move-result v0

    .line 482
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->g()V

    .line 484
    const/4 v0, 0x1

    .line 487
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 223
    new-instance v0, Lcom/roblox/client/chat/g;

    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/chat/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    .line 224
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    iget-object v1, p0, Lcom/roblox/client/chat/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/g;->a(Ljava/util/ArrayList;)V

    .line 226
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->b()V

    .line 231
    iget-object v0, p0, Lcom/roblox/client/chat/h;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 234
    iget-wide v0, p0, Lcom/roblox/client/chat/h;->p:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 235
    iget-wide v0, p0, Lcom/roblox/client/chat/h;->p:J

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/h;->b(J)V

    .line 237
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 363
    const v0, 0xa9a7

    if-ne p1, v0, :cond_0

    .line 364
    const v0, 0xa9a9

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 365
    const-string v0, "CONVERSATION_REMOVED_EXTRA"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 366
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 371
    :cond_0
    return-void
.end method

.method public onAvatarHeadshotsRetrievedEvent(Lcom/roblox/client/e/c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 689
    return-void
.end method

.method public onChatConversationUpdatedEvent(Lcom/roblox/client/e/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 680
    invoke-virtual {p1}, Lcom/roblox/client/e/e;->a()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 683
    :cond_0
    return-void
.end method

.method public onChatNewConversationEvent(Lcom/roblox/client/e/g;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 728
    invoke-virtual {p1}, Lcom/roblox/client/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p1}, Lcom/roblox/client/e/g;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/roblox/client/e/g;->c()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/chat/h;->b(JZ)V

    .line 730
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 732
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/roblox/client/chat/h;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->i()V

    .line 358
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->k:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/roblox/client/chat/h$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/h$a;-><init>(Lcom/roblox/client/chat/h;)V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->l:Lcom/roblox/client/chat/h$a;

    .line 131
    new-instance v0, Lcom/roblox/client/chat/a/m;

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/n;->a(Lcom/roblox/client/chat/a/m;)V

    .line 133
    new-instance v0, Lcom/roblox/client/h/m;

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/h/m;-><init>(J)V

    .line 134
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    const-string v1, "START_CONVERSATION_ID_EXTRA"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/h;->p:J

    .line 140
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 149
    const v0, 0x7f0a0059

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 150
    const v0, 0x7f080123

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/h;->f:Landroid/widget/FrameLayout;

    .line 151
    const v0, 0x7f080191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/h;->g:Landroid/widget/FrameLayout;

    .line 153
    const v0, 0x7f0a005f

    iget-object v1, p0, Lcom/roblox/client/chat/h;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/roblox/client/chat/h;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/h;->i:Landroid/view/View;

    .line 158
    const v0, 0x7f080084

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/chat/h;->e:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/roblox/client/chat/h;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f080043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/h;->j:Landroid/view/View;

    .line 162
    const v0, 0x7f080044

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/h;->r:Landroid/view/View;

    .line 164
    const v0, 0x7f08010f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    .line 166
    iget-object v0, p0, Lcom/roblox/client/chat/h;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 170
    :cond_0
    const v0, 0x7f0801bd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/h;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 172
    iget-object v0, p0, Lcom/roblox/client/chat/h;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 174
    const v0, 0x7f0801da

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    .line 175
    iget-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0e00fe

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 176
    iget-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 177
    iget-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 180
    iget-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f080127

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f070736

    const v4, 0x7f070737

    invoke-static {v1, v3, v4}, Lcom/roblox/client/components/p;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 181
    iget-object v0, p0, Lcom/roblox/client/chat/h;->b:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 185
    const v3, 0x7f0e01c1

    invoke-virtual {p0, v3}, Lcom/roblox/client/chat/h;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/roblox/client/j/e;

    invoke-direct {v4, p0}, Lcom/roblox/client/j/e;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 187
    new-instance v5, Lcom/roblox/client/chat/h$2;

    invoke-direct {v5, p0, v3}, Lcom/roblox/client/chat/h$2;-><init>(Lcom/roblox/client/chat/h;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/roblox/client/j/e;->a(Lcom/roblox/client/j/e$a;)V

    .line 207
    invoke-virtual {v4, v0, v1}, Lcom/roblox/client/j/e;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 209
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/h;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 213
    :cond_1
    new-instance v0, Lcom/roblox/client/components/c;

    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x190

    const v4, 0x7f05000a

    const v5, 0x7f050003

    const v7, 0x7f060095

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v7, 0x7f060094

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/components/c;-><init>(Landroid/content/Context;Landroid/view/View;IIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    .line 215
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 145
    return-void
.end method

.method public onFriendshipUpdatedEvent(Lcom/roblox/client/e/m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p1}, Lcom/roblox/client/e/m;->a()Lcom/roblox/client/chat/a/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p1}, Lcom/roblox/client/e/m;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 751
    invoke-virtual {p1}, Lcom/roblox/client/e/m;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 754
    :cond_1
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->b()V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->a()V

    .line 280
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->l()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 310
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0}, Lcom/roblox/client/chat/g;->notifyDataSetChanged()V

    .line 312
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/g;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/d;

    .line 314
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/h;->b(J)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/h;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/roblox/client/chat/h;->c:Lcom/roblox/client/chat/g;

    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 320
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/roblox/client/chat/a/m;->b(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/chat/h;->n:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/roblox/client/chat/h;->g:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->h()V

    .line 326
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v0, Lcom/roblox/client/h/j;

    new-instance v2, Lcom/roblox/client/chat/h$3;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/h$3;-><init>(Lcom/roblox/client/chat/h;)V

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/h/j;-><init>(Ljava/util/ArrayList;Lcom/roblox/client/h/j$a;)V

    .line 335
    invoke-virtual {v0}, Lcom/roblox/client/h/j;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/chat/h;->o:Ljava/lang/String;

    .line 336
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    goto :goto_0
.end method

.method public onLatestMessagesUpdatedEvent(Lcom/roblox/client/e/o;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 695
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 344
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->i()V

    .line 345
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x7f080127
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 269
    iget-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->b()V

    .line 270
    return-void
.end method

.method public onRealtimeConversationRemovedEvent(Lcom/roblox/client/e/u;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 707
    instance-of v1, v0, Lcom/roblox/client/chat/ConversationActivity$a;

    if-eqz v1, :cond_0

    .line 708
    check-cast v0, Lcom/roblox/client/chat/ConversationActivity$a;

    invoke-interface {v0}, Lcom/roblox/client/chat/ConversationActivity$a;->a()J

    move-result-wide v0

    .line 709
    invoke-virtual {p1}, Lcom/roblox/client/e/u;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/roblox/client/chat/h;->b()V

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 714
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 261
    iget-object v0, p0, Lcom/roblox/client/chat/h;->q:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->a()V

    .line 262
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->l()V

    .line 263
    return-void
.end method

.method public onSignalRConnectivityChangeEvent(Lcom/roblox/client/e/v;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/roblox/client/chat/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->j()V

    .line 740
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/chat/h;->i:Landroid/view/View;

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 744
    return-void

    .line 743
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/roblox/client/chat/h;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/h;->l:Lcom/roblox/client/chat/h$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 246
    iget-object v1, p0, Lcom/roblox/client/chat/h;->i:Landroid/view/View;

    invoke-static {}, Lcom/roblox/client/realtime/RealtimeService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/h;->s:Lcom/roblox/client/chat/k;

    .line 254
    const-string v0, "chatlist"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 255
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 287
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 288
    return-void
.end method

.method public onUnreadNotificationCountEvent(Lcom/roblox/client/e/w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLF.onUnreadNotificationCountEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/w;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/roblox/client/chat/h;->a:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/roblox/client/chat/h;->a:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 762
    :cond_0
    return-void
.end method

.method public onUserStatusUpdatedEvent(Lcom/roblox/client/e/z;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/roblox/client/chat/h;->f()V

    .line 701
    return-void
.end method
