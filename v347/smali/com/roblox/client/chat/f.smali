.class public Lcom/roblox/client/chat/f;
.super Lcom/roblox/client/chat/b;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
.implements Lcom/roblox/client/chat/ConversationActivity$a;
.implements Lcom/roblox/client/chat/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/f$a;,
        Lcom/roblox/client/chat/f$b;
    }
.end annotation


# static fields
.field private static final G:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:J

.field private E:I

.field private F:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private I:Landroid/os/Handler;

.field private J:Ljava/lang/Runnable;

.field private K:Lcom/roblox/client/http/u;

.field private L:Lcom/roblox/client/http/u;

.field private M:Lcom/roblox/client/components/c;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private final b:I

.field private final c:I

.field private d:Landroid/support/v7/widget/Toolbar;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Lcom/roblox/client/chat/d;

.field private w:Lcom/roblox/client/chat/a/c;

.field private x:Lcom/roblox/client/chat/f$a;

.field private y:J

.field private z:Lcom/roblox/client/chat/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    sput-object v0, Lcom/roblox/client/chat/f;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/b;-><init>()V

    .line 97
    const/16 v0, 0x1e

    iput v0, p0, Lcom/roblox/client/chat/f;->b:I

    .line 98
    iput v1, p0, Lcom/roblox/client/chat/f;->c:I

    .line 127
    new-instance v0, Lcom/roblox/client/chat/f$a;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/chat/f$a;-><init>(Lcom/roblox/client/chat/f;I)V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->x:Lcom/roblox/client/chat/f$a;

    .line 129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/chat/f;->E:I

    .line 151
    const-string v0, "USER_TYPING_CLIENT_ID"

    iput-object v0, p0, Lcom/roblox/client/chat/f;->H:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;J)J
    .locals 1

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/roblox/client/chat/f;->D:J

    return-wide p1
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(JILjava/lang/String;)V
    .locals 9

    .prologue
    .line 672
    invoke-static {}, Lcom/roblox/client/h/t;->n()Lcom/b/a/a/o;

    move-result-object v1

    .line 673
    new-instance v0, Lcom/roblox/client/h/a;

    const/4 v6, 0x0

    new-instance v7, Lcom/roblox/client/chat/f$b;

    invoke-direct {v7, p0}, Lcom/roblox/client/chat/f$b;-><init>(Lcom/roblox/client/chat/f;)V

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/h/a;-><init>(Lcom/b/a/a/o;JILjava/lang/String;ZLcom/roblox/client/h/a$a;)V

    .line 674
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 675
    return-void
.end method

.method private a(JILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 666
    invoke-static {}, Lcom/roblox/client/h/t;->n()Lcom/b/a/a/o;

    move-result-object v1

    .line 667
    new-instance v0, Lcom/roblox/client/h/a;

    const/4 v6, 0x0

    new-instance v7, Lcom/roblox/client/chat/f$b;

    invoke-direct {v7, p0, p5}, Lcom/roblox/client/chat/f$b;-><init>(Lcom/roblox/client/chat/f;Ljava/lang/String;)V

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/h/a;-><init>(Lcom/b/a/a/o;JILjava/lang/String;ZLcom/roblox/client/h/a$a;)V

    .line 668
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 669
    return-void
.end method

.method private a(JJ)V
    .locals 7

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 1222
    const-string v1, "OneToOneConversation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/roblox/client/chat/f;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1230
    :cond_1
    new-instance v0, Lcom/roblox/client/chat/f$8;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/chat/f$8;-><init>(Lcom/roblox/client/chat/f;JJ)V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    .line 1241
    iget-object v0, p0, Lcom/roblox/client/chat/f;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    invoke-static {}, Lcom/roblox/client/b;->m()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 678
    new-instance v0, Lcom/roblox/client/h/h;

    new-instance v1, Lcom/roblox/client/chat/f$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/f$5;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/roblox/client/h/h;-><init>(JLjava/lang/String;Lcom/roblox/client/h/h$a;)V

    .line 688
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 691
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v7

    .line 692
    new-instance v1, Lcom/roblox/client/chat/a/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/chat/a/h;-><init>(JJLjava/lang/String;)V

    .line 693
    invoke-virtual {v0}, Lcom/roblox/client/h/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/h;->b(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v7}, Lcom/roblox/client/chat/a/c;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/h;->b(J)V

    .line 695
    invoke-virtual {v7, v1}, Lcom/roblox/client/chat/a/c;->a(Lcom/roblox/client/chat/a/h;)V

    .line 697
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    .line 699
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->n()V

    .line 700
    return-void
.end method

.method private a(Lcom/roblox/client/chat/a/d;)V
    .locals 4

    .prologue
    .line 810
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {}, Lcom/roblox/client/b;->al()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "OneToOneConversation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->g()J

    move-result-wide v0

    .line 813
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/chat/a/n;->c(J)Lcom/roblox/client/chat/a/i;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/roblox/client/chat/f;->l:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 818
    iget-object v1, p0, Lcom/roblox/client/chat/f;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 821
    new-instance v1, Lcom/roblox/client/http/h;

    invoke-direct {v1}, Lcom/roblox/client/http/h;-><init>()V

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/roblox/client/RobloxSettings;->joinGameIconUrl(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/roblox/client/chat/f$6;

    invoke-direct {v3, p0}, Lcom/roblox/client/chat/f$6;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/roblox/client/http/h;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    .line 839
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->m()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;JILjava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/chat/f;->a(JILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;JILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/roblox/client/chat/f;->a(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/f;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/chat/f;ZJ)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/chat/f;->a(ZJ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 554
    if-eqz p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f070725

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 556
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/roblox/client/chat/f$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/f$4;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(ZJ)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/roblox/client/b;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/chat/f;->K:Lcom/roblox/client/http/u;

    .line 349
    :goto_1
    invoke-virtual {v0}, Lcom/roblox/client/http/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;

    invoke-direct {v1, p2, p3, p1}, Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;-><init>(JZ)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/a/a;

    invoke-direct {v1}, Lcom/roblox/platform/http/a/a;-><init>()V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/chat/f;->L:Lcom/roblox/client/http/u;

    goto :goto_1
.end method

.method private b(J)V
    .locals 1

    .prologue
    .line 799
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->r()V

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->s()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->h()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/chat/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/chat/f;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/f;->c(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1392
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 720
    iget-object v1, p0, Lcom/roblox/client/chat/f;->k:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    return-void

    .line 720
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->g()V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lcom/roblox/client/chat/f;->j:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    return-void

    .line 724
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/chat/f;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/roblox/client/chat/f;->A:Z

    return p1
.end method

.method static synthetic d(Lcom/roblox/client/chat/f;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1146
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1147
    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1156
    if-nez v0, :cond_5

    move v1, v3

    .line 1158
    :goto_1
    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/roblox/client/chat/f;->E:I

    if-gez v2, :cond_2

    .line 1160
    const v2, 0x7f080135

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_2

    .line 1162
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/f;->E:I

    .line 1166
    :cond_2
    const/4 v0, 0x0

    .line 1167
    iget-object v2, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1168
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0, v4}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    move-object v2, v0

    .line 1172
    :goto_2
    if-eqz p1, :cond_3

    .line 1173
    iget-wide v6, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {p0, v6, v7}, Lcom/roblox/client/chat/f;->a(J)V

    .line 1176
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/d;->a()V

    .line 1179
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v6, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v6, v7}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 1180
    iget-object v5, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v5}, Lcom/roblox/client/chat/a/c;->clear()V

    .line 1181
    iget-object v5, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v5, v0}, Lcom/roblox/client/chat/a/c;->a(Lcom/roblox/client/chat/a/c;)V

    .line 1184
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 1185
    const-string v5, "OneToOneConversation"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1186
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v6, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v6, v7}, Lcom/roblox/client/chat/a/a;->f(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1189
    new-instance v5, Lcom/roblox/client/chat/a/k;

    invoke-direct {v5, v0}, Lcom/roblox/client/chat/a/k;-><init>(Ljava/util/ArrayList;)V

    .line 1190
    const-string v6, "USER_TYPING_CLIENT_ID"

    invoke-virtual {v5, v6}, Lcom/roblox/client/chat/a/k;->b(Ljava/lang/String;)V

    .line 1191
    iget-object v6, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v6, v5}, Lcom/roblox/client/chat/a/c;->a(Lcom/roblox/client/chat/a/h;)V

    .line 1193
    iget-wide v6, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/roblox/client/chat/f;->a(JJ)V

    .line 1202
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1204
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/d;->a(Lcom/roblox/client/chat/a/h;)I

    move-result v2

    .line 1207
    if-nez v4, :cond_7

    if-lez v2, :cond_7

    .line 1208
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1210
    iget v0, p0, Lcom/roblox/client/chat/f;->E:I

    add-int/2addr v0, v1

    .line 1214
    :goto_4
    iget-object v1, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 1156
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto/16 :goto_1

    .line 1196
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    const-string v3, "USER_TYPING_CLIENT_ID"

    invoke-virtual {v0, v3}, Lcom/roblox/client/chat/a/c;->c(Ljava/lang/String;)Lcom/roblox/client/chat/a/h;

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move-object v2, v0

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/roblox/client/chat/f;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/roblox/client/chat/f;->B:Z

    return p1
.end method

.method static synthetic e(Lcom/roblox/client/chat/f;)J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    return-wide v0
.end method

.method static synthetic e(Lcom/roblox/client/chat/f;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/roblox/client/chat/f;->C:Z

    return p1
.end method

.method static synthetic f(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/c;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/roblox/client/chat/f;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/roblox/client/chat/f;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method private g()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 321
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->g()J

    move-result-wide v0

    .line 327
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 328
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/chat/a/n;->c(J)Lcom/roblox/client/chat/a/i;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v4, v0, v4}, Lcom/roblox/client/game/a;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    const/16 v3, 0x2778

    invoke-virtual {v1, v2, v0, v3}, Lcom/roblox/client/game/b;->a(Landroid/app/Activity;Lcom/roblox/client/game/a;I)V

    .line 339
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/roblox/client/chat/f;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->c(Z)V

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->b(Z)V

    .line 358
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/roblox/client/p;->b(Landroid/view/View;)V

    .line 359
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->i()V

    .line 360
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 361
    return-void
.end method

.method static synthetic i(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/d;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 365
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/roblox/client/chat/f;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v1

    new-instance v2, Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;

    iget-wide v4, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-direct {v2, v4, v5, v0}, Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/chat/f$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/f$2;-><init>(Lcom/roblox/client/chat/f;)V

    .line 372
    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 440
    :cond_0
    return-void
.end method

.method private j()J
    .locals 6

    .prologue
    .line 508
    const-wide/16 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->e()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    .line 512
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    return-wide v2

    .line 510
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/roblox/client/chat/f;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    .line 522
    new-instance v1, Lcom/roblox/client/chat/m;

    invoke-direct {v1}, Lcom/roblox/client/chat/m;-><init>()V

    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v2, "SHOW_SHADOWS_EXTRA"

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->b()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 525
    const-string v2, "CONVERSATION_ID_EXTRA"

    iget-wide v4, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 526
    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/m;->setArguments(Landroid/os/Bundle;)V

    .line 528
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080191

    .line 529
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v2

    .line 530
    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 531
    invoke-virtual {v2}, Landroid/support/v4/app/p;->c()I

    .line 532
    return-void

    .line 528
    :cond_0
    const v0, 0x7f080197

    goto :goto_0
.end method

.method static synthetic k(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    return-void
.end method

.method static synthetic l(Lcom/roblox/client/chat/f;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 536
    new-instance v1, Lcom/roblox/client/chat/e;

    invoke-direct {v1}, Lcom/roblox/client/chat/e;-><init>()V

    .line 537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 538
    const-string v2, "SHOW_SHADOWS_EXTRA"

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->b()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    const-string v2, "CONVERSATION_ID_EXTRA"

    iget-wide v4, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 541
    iget-object v2, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v2

    .line 542
    const-string v3, "OneToOneConversation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const-string v2, "ONE_ON_ONE_CHAT_PARTICIPANT_ID"

    iget-object v3, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/d;->g()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 545
    :cond_0
    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/e;->setArguments(Landroid/os/Bundle;)V

    .line 547
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080191

    .line 548
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v2

    .line 549
    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 550
    invoke-virtual {v2}, Landroid/support/v4/app/p;->c()I

    .line 551
    return-void

    .line 547
    :cond_1
    const v0, 0x7f080197

    goto :goto_0
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 569
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e015b

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 572
    iget-object v1, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 581
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0165

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 576
    iget-object v1, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 579
    :cond_1
    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-direct {p0, v2, v3, v0}, Lcom/roblox/client/chat/f;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->w()V

    return-void
.end method

.method static synthetic n(Lcom/roblox/client/chat/f;)J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->D:J

    return-wide v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 704
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->t()V

    .line 705
    return-void
.end method

.method static synthetic o(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/d;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 715
    iput-boolean v0, p0, Lcom/roblox/client/chat/f;->A:Z

    .line 716
    iput-boolean v0, p0, Lcom/roblox/client/chat/f;->B:Z

    .line 717
    return-void
.end method

.method static synthetic p(Lcom/roblox/client/chat/f;)Lcom/roblox/client/chat/a/h;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->y()Lcom/roblox/client/chat/a/h;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 8

    .prologue
    const v7, 0x7f080129

    const v6, 0x7f080128

    const v5, 0x7f080126

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 842
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v1

    .line 846
    const-string v2, "OneToOneConversation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    const v1, 0x7f08012d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 848
    const v1, 0x7f08012a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 849
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 850
    const v1, 0x7f08012c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 851
    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 852
    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const v1, 0x7f08012d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 856
    const v1, 0x7f08012a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 857
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 858
    const v1, 0x7f08012c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 859
    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 866
    invoke-static {}, Lcom/roblox/client/realtime/RealtimeService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-boolean v0, p0, Lcom/roblox/client/chat/f;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/chat/f;->B:Z

    .line 871
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/roblox/client/chat/f;->a(JILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/roblox/client/chat/f;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/roblox/client/chat/f;->B:Z

    return v0
.end method

.method private r()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 876
    iget-object v0, p0, Lcom/roblox/client/chat/f;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Lcom/roblox/client/components/c;

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/chat/f;->N:Landroid/view/View;

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

    iput-object v0, p0, Lcom/roblox/client/chat/f;->M:Lcom/roblox/client/components/c;

    .line 878
    iget-object v0, p0, Lcom/roblox/client/chat/f;->M:Lcom/roblox/client/components/c;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/roblox/client/chat/f;->O:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/roblox/client/chat/f;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/roblox/client/chat/f;->M:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->a()V

    .line 885
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/roblox/client/chat/f;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/roblox/client/chat/f;->A:Z

    return v0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, Lcom/roblox/client/chat/f;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/f;->M:Lcom/roblox/client/components/c;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/roblox/client/chat/f;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/roblox/client/chat/f;->N:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/roblox/client/chat/f;->M:Lcom/roblox/client/components/c;

    invoke-virtual {v0}, Lcom/roblox/client/components/c;->c()V

    .line 892
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 894
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/roblox/client/chat/f;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/roblox/client/chat/f;->C:Z

    return v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1044
    return-void
.end method

.method private u()Z
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/roblox/client/chat/f$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/f$7;-><init>(Lcom/roblox/client/chat/f;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1057
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1060
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->d(J)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v2}, Lcom/roblox/client/chat/d;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1062
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/chat/f;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    return-void

    :cond_0
    move v0, v1

    .line 1061
    goto :goto_0

    .line 1062
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private x()V
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->d(Z)V

    .line 1137
    return-void
.end method

.method private y()Lcom/roblox/client/chat/a/h;
    .locals 2

    .prologue
    .line 1374
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v1}, Lcom/roblox/client/chat/d;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1375
    iget-object v1, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/d;->a(I)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    .line 1379
    :goto_1
    return-object v0

    .line 1374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 708
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 658
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->d()Lcom/roblox/client/chat/a/h;

    move-result-object v1

    .line 660
    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {v1}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/chat/a/c;->a(Ljava/lang/String;Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public a(JZ)V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 729
    iget-wide v4, p0, Lcom/roblox/client/chat/f;->y:J

    cmp-long v0, v4, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/f;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 736
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/a;->g(J)V

    .line 737
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/d;->a()V

    .line 739
    invoke-direct {p0, p3}, Lcom/roblox/client/chat/f;->b(Z)V

    .line 742
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->o()V

    .line 745
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->s()V

    .line 748
    iget-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->clear()V

    .line 749
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 750
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/chat/f;->b(J)V

    .line 751
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/roblox/client/chat/f;->D:J

    .line 752
    iget-object v0, p0, Lcom/roblox/client/chat/f;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iput-wide p1, p0, Lcom/roblox/client/chat/f;->y:J

    .line 756
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isShowVisibleAge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    iget-object v3, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->ageVisibilityText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 760
    :cond_2
    cmp-long v0, p1, v8

    if-lez v0, :cond_7

    .line 761
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    .line 762
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    iget-object v3, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0, v3}, Lcom/roblox/client/chat/d;->a(Lcom/roblox/client/chat/a/d;)V

    .line 763
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_6

    .line 764
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/a/d;)V

    .line 765
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->p()V

    .line 766
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 773
    :goto_2
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 776
    invoke-direct {p0, v1}, Lcom/roblox/client/chat/f;->d(Z)V

    .line 779
    :cond_3
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->q()V

    .line 781
    iget-object v0, p0, Lcom/roblox/client/chat/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/roblox/client/chat/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 793
    :cond_4
    :goto_3
    cmp-long v0, p1, v8

    if-lez v0, :cond_8

    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->a(Z)V

    .line 795
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->n()V

    goto/16 :goto_0

    .line 757
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 769
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    const v3, 0x7f0e013c

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_2

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/roblox/client/chat/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 789
    iget-object v0, p0, Lcom/roblox/client/chat/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v0, v2

    .line 793
    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 1397
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 1398
    invoke-virtual {v0, p1}, Lcom/roblox/client/chat/a/c;->d(Ljava/lang/String;)Lcom/roblox/client/chat/a/h;

    move-result-object v1

    .line 1399
    if-eqz v1, :cond_0

    .line 1401
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/h;->b(J)V

    .line 1402
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    .line 1403
    new-instance v1, Lcom/roblox/client/h/h;

    new-instance v5, Lcom/roblox/client/chat/f$9;

    invoke-direct {v5, p0}, Lcom/roblox/client/chat/f$9;-><init>(Lcom/roblox/client/chat/f;)V

    move-wide v2, p3

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/h;-><init>(JLjava/lang/String;Lcom/roblox/client/h/h$a;Ljava/lang/String;)V

    .line 1414
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 1416
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->c()V

    .line 1068
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 585
    invoke-super {p0, p1}, Lcom/roblox/client/chat/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 587
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/d;->a(Lcom/roblox/client/chat/a/c;)V

    .line 589
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 590
    iget-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->x:Lcom/roblox/client/chat/f$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 593
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    const-string v1, "CONVERSATION_ID_EXTRA"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "SHOW_RENAME_TITLE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/roblox/client/chat/f;->a(JZ)V

    .line 600
    :cond_0
    return-void
.end method

.method public onAvatarHeadshotsRetrievedEvent(Lcom/roblox/client/e/c;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 992
    invoke-virtual {p1}, Lcom/roblox/client/e/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/roblox/client/e/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_1

    .line 994
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/roblox/client/e/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 995
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 996
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    .line 1003
    :cond_1
    return-void
.end method

.method public onChatConversationUpdatedEvent(Lcom/roblox/client/e/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 972
    invoke-virtual {p1}, Lcom/roblox/client/e/e;->a()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/roblox/client/e/e;->a()Lcom/roblox/client/chat/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 973
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    const-string v1, "update conversation"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    .line 975
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/d;->a(Lcom/roblox/client/chat/a/d;)V

    .line 977
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 981
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->u()Z

    move-result v0

    .line 982
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    .line 983
    if-eqz v0, :cond_1

    .line 984
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->t()V

    .line 987
    :cond_1
    return-void
.end method

.method public onChatMessagesRetrievedEvent(Lcom/roblox/client/e/f;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 900
    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {p1}, Lcom/roblox/client/e/f;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 901
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->s()V

    .line 902
    invoke-virtual {p1}, Lcom/roblox/client/e/f;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 904
    invoke-virtual {p1}, Lcom/roblox/client/e/f;->b()Z

    move-result v0

    .line 905
    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/c;->d()Lcom/roblox/client/chat/a/h;

    move-result-object v2

    .line 907
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/roblox/client/e/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/f;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    move v0, v1

    .line 909
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/roblox/client/chat/f;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    move v7, v1

    .line 912
    :goto_1
    invoke-virtual {p1}, Lcom/roblox/client/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/e/f;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/roblox/client/e/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/f;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->d()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/chat/a/a;->a(JJZ)Z

    .line 919
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    .line 921
    if-eqz v7, :cond_6

    .line 922
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->t()V

    .line 932
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v6

    .line 907
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v7, v6

    .line 909
    goto :goto_1

    .line 924
    :cond_6
    invoke-virtual {p1}, Lcom/roblox/client/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->v()V

    goto :goto_2
.end method

.method public onChatTypingEvent(Lcom/roblox/client/e/i;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChatTypingEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/i;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/i;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->b(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1}, Lcom/roblox/client/e/i;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1011
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/e/i;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/roblox/client/e/i;->b()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/roblox/client/e/i;->c()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/chat/a/a;->a(JJZ)Z

    .line 1012
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->u()Z

    move-result v0

    .line 1013
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->x()V

    .line 1014
    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->t()V

    .line 1018
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/roblox/client/chat/b;->onCreate(Landroid/os/Bundle;)V

    .line 165
    new-instance v0, Lcom/roblox/client/chat/a/c;

    invoke-direct {v0}, Lcom/roblox/client/chat/a/c;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    .line 166
    new-instance v0, Lcom/roblox/client/chat/d;

    invoke-direct {v0, p0}, Lcom/roblox/client/chat/d;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->I:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/roblox/client/http/u;

    invoke-static {}, Lcom/roblox/client/b;->n()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/http/u;-><init>(J)V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->K:Lcom/roblox/client/http/u;

    .line 169
    new-instance v0, Lcom/roblox/client/http/u;

    invoke-static {}, Lcom/roblox/client/b;->n()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/http/u;-><init>(J)V

    iput-object v0, p0, Lcom/roblox/client/chat/f;->L:Lcom/roblox/client/http/u;

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 174
    const v0, 0x7f0a005d

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 175
    invoke-virtual {p0, v4}, Lcom/roblox/client/chat/f;->a(Landroid/view/View;)V

    .line 177
    const v0, 0x7f0800fa

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->j:Landroid/widget/LinearLayout;

    .line 178
    const v0, 0x7f080174

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->k:Landroid/widget/LinearLayout;

    .line 179
    const v0, 0x7f0800ff

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->l:Landroid/widget/LinearLayout;

    .line 181
    const v0, 0x7f080047

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->m:Landroid/view/View;

    .line 182
    const v0, 0x7f080046

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->n:Landroid/view/View;

    .line 183
    const v0, 0x7f080045

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->o:Landroid/view/View;

    .line 184
    const v0, 0x7f080176

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->p:Landroid/view/View;

    .line 185
    const v0, 0x7f0800fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->q:Landroid/view/View;

    .line 187
    const v0, 0x7f0800e4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->r:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f0800e6

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->s:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    .line 192
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 193
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/roblox/client/chat/f;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f070763

    const v6, 0x7f070764

    invoke-static {v2, v5, v6}, Lcom/roblox/client/components/p;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const v0, 0x7f08012e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    .line 199
    const v0, 0x7f080173

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    .line 201
    const v0, 0x7f080194

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->g:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/roblox/client/chat/f;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/roblox/client/chat/f$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$1;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f080172

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->h:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/roblox/client/chat/f;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/roblox/client/chat/f$10;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$10;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0800fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->t:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/roblox/client/chat/f;->t:Landroid/widget/TextView;

    new-instance v2, Lcom/roblox/client/chat/f$11;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$11;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v0, 0x7f08010f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/roblox/client/chat/f;->i:Landroid/widget/ListView;

    .line 226
    const v0, 0x7f080044

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->N:Landroid/view/View;

    .line 227
    const v0, 0x7f080175

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->O:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/chat/f$12;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$12;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 239
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/chat/f$13;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$13;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 259
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    const v2, 0x7f0e013a

    invoke-virtual {p0, v2}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/chat/f$14;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$14;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    const v2, 0x7f0e0138

    invoke-virtual {p0, v2}, Lcom/roblox/client/chat/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/chat/f$15;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$15;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 279
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/chat/f$16;

    invoke-direct {v2, p0}, Lcom/roblox/client/chat/f$16;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 291
    invoke-static {}, Lcom/roblox/client/b;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 293
    new-instance v2, Lcom/roblox/client/components/b;

    invoke-direct {v2}, Lcom/roblox/client/components/b;-><init>()V

    aput-object v2, v0, v1

    .line 294
    iget-object v2, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_6

    .line 300
    const-string v2, "SHOW_SHADOWS_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    :goto_0
    iget-object v5, p0, Lcom/roblox/client/chat/f;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v5, p0, Lcom/roblox/client/chat/f;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v5, p0, Lcom/roblox/client/chat/f;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    move v2, v1

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v5, p0, Lcom/roblox/client/chat/f;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    move v2, v1

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/roblox/client/chat/f;->q:Landroid/view/View;

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    const v0, 0x7f080141

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->u:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/roblox/client/chat/f;->u:Landroid/view/View;

    new-instance v1, Lcom/roblox/client/chat/f$17;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/f$17;-><init>(Lcom/roblox/client/chat/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    return-object v4

    :cond_1
    move v2, v3

    .line 302
    goto :goto_1

    :cond_2
    move v2, v3

    .line 303
    goto :goto_2

    :cond_3
    move v2, v3

    .line 304
    goto :goto_3

    :cond_4
    move v2, v3

    .line 305
    goto :goto_4

    :cond_5
    move v1, v3

    .line 306
    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 452
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 491
    :pswitch_0
    invoke-static {}, Lcom/roblox/client/realtime/RealtimeService;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    const v2, 0x7f0e0166

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v11

    .line 504
    :goto_0
    return v0

    .line 454
    :pswitch_1
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->j()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/roblox/client/chat/f;->y:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/chat/l;->a(Landroid/support/v4/app/Fragment;JLandroid/content/DialogInterface$OnClickListener;J)V

    move v0, v11

    .line 455
    goto :goto_0

    .line 457
    :pswitch_2
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->j()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/roblox/client/chat/h;->a(Landroid/support/v4/app/Fragment;J)V

    move v0, v11

    .line 458
    goto :goto_0

    .line 460
    :pswitch_3
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->l()V

    move v0, v11

    .line 461
    goto :goto_0

    .line 463
    :pswitch_4
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->k()V

    .line 464
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->e()V

    move v0, v11

    .line 465
    goto :goto_0

    .line 467
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 474
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 475
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->F:Ljava/lang/String;

    .line 478
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/roblox/client/chat/f$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/f$3;-><init>(Lcom/roblox/client/chat/f;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    invoke-direct {p0, v11}, Lcom/roblox/client/chat/f;->b(Z)V

    :cond_0
    move v0, v11

    .line 487
    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/f;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 497
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 499
    :pswitch_6
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v8

    .line 500
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/roblox/client/chat/f;->y:J

    move-object v10, v3

    invoke-static/range {v5 .. v10}, Lcom/roblox/client/chat/l;->a(Landroid/content/Context;JJLandroid/content/DialogInterface$OnClickListener;)V

    move v0, v11

    .line 501
    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x7f080126
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 497
    :pswitch_data_1
    .packed-switch 0x7f080128
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 646
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onPause()V

    .line 647
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->s()V

    .line 648
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 652
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onResume()V

    .line 654
    iget-object v0, p0, Lcom/roblox/client/chat/f;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 655
    return-void
.end method

.method public onSignalRConnectivityChangeEvent(Lcom/roblox/client/e/v;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 938
    const/4 v0, 0x0

    .line 941
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/a;->i()Z

    .line 943
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 945
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/roblox/client/chat/f;->w:Lcom/roblox/client/chat/a/c;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 947
    const/4 v0, 0x1

    .line 954
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v1

    .line 955
    iget-object v2, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v2, :cond_1

    .line 956
    iget-object v2, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/d;->h()Ljava/util/ArrayList;

    move-result-object v2

    .line 957
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OneToOneConversation"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    new-instance v3, Lcom/roblox/client/h/q;

    invoke-direct {v3, v2}, Lcom/roblox/client/h/q;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 963
    :cond_1
    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->d(Z)V

    .line 965
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->u_()V

    .line 966
    return-void

    .line 950
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->q()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 604
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onStart()V

    .line 605
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->u_()V

    .line 609
    invoke-direct {p0}, Lcom/roblox/client/chat/f;->q()V

    .line 612
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->f(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 614
    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/roblox/client/chat/f;->a(JJ)V

    .line 617
    :cond_0
    const-string v0, "chatConversation"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v0

    .line 621
    if-nez v0, :cond_1

    .line 622
    sget-object v0, Lcom/roblox/client/chat/f;->G:Ljava/lang/String;

    const-string v1, "onStart() This conversation was removed"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->c()V

    .line 626
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 630
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 631
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onStop()V

    .line 633
    iget-wide v0, p0, Lcom/roblox/client/chat/f;->y:J

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/f;->a(J)V

    .line 634
    invoke-virtual {p0}, Lcom/roblox/client/chat/f;->e()V

    .line 637
    iget-object v0, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/roblox/client/chat/f;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/chat/f;->J:Ljava/lang/Runnable;

    .line 640
    iget-object v0, p0, Lcom/roblox/client/chat/f;->v:Lcom/roblox/client/chat/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/d;->a()V

    .line 642
    :cond_0
    return-void
.end method

.method public onUserStatusUpdatedEvent(Lcom/roblox/client/e/z;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->g()J

    move-result-wide v0

    .line 1027
    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/e/z;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/chat/a/n;->c(J)Lcom/roblox/client/chat/a/i;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/i;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/roblox/client/chat/f;->z:Lcom/roblox/client/chat/a/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/a/d;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/f;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
