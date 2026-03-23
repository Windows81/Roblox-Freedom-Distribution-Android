.class public Lcom/roblox/client/signup/multiscreen/b/r;
.super Landroidx/lifecycle/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/b/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/p<",
        "Lcom/roblox/client/signup/multiscreen/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/roblox/client/signup/multiscreen/c;

.field private f:Lcom/roblox/client/signup/multiscreen/b/q;

.field private g:I

.field private h:Lcom/roblox/client/signup/multiscreen/a/a;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Lcom/roblox/abtesting/a;

.field private m:Lcom/roblox/client/s/h;

.field private n:Lcom/roblox/client/signup/d$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/q;Lcom/roblox/abtesting/a;Lcom/roblox/client/s/h;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroidx/lifecycle/p;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->g:I

    .line 66
    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/multiscreen/b/r$a;-><init>(Lcom/roblox/client/signup/multiscreen/b/r;Lcom/roblox/client/signup/multiscreen/b/r$1;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->n:Lcom/roblox/client/signup/d$a;

    .line 38
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/r;->f:Lcom/roblox/client/signup/multiscreen/b/q;

    .line 39
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r;->e:Lcom/roblox/client/signup/multiscreen/c;

    .line 40
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/r;->l:Lcom/roblox/abtesting/a;

    .line 41
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/b/r;->m:Lcom/roblox/client/s/h;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/abtesting/a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->l:Lcom/roblox/abtesting/a;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/r;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/s/h;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->m:Lcom/roblox/client/s/h;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/b/r;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/a/a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->h:Lcom/roblox/client/signup/multiscreen/a/a;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/b/q;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->f:Lcom/roblox/client/signup/multiscreen/b/q;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/c;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->e:Lcom/roblox/client/signup/multiscreen/c;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/signup/multiscreen/b/r;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/roblox/client/signup/multiscreen/b/r;->k:J

    return-wide v0
.end method


# virtual methods
.method public a(ILcom/roblox/client/signup/multiscreen/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    .line 45
    iput v2, v0, Lcom/roblox/client/signup/multiscreen/b/r;->g:I

    .line 46
    iput-object v1, v0, Lcom/roblox/client/signup/multiscreen/b/r;->h:Lcom/roblox/client/signup/multiscreen/a/a;

    move-object v6, p3

    .line 47
    iput-object v6, v0, Lcom/roblox/client/signup/multiscreen/b/r;->i:Ljava/lang/String;

    move-object/from16 v7, p4

    .line 48
    iput-object v7, v0, Lcom/roblox/client/signup/multiscreen/b/r;->j:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/roblox/client/signup/multiscreen/b/r;->k:J

    .line 51
    new-instance v11, Lcom/roblox/client/signup/c;

    iget v3, v1, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    iget v4, v1, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    iget v5, v1, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    iget-object v10, v0, Lcom/roblox/client/signup/multiscreen/b/r;->n:Lcom/roblox/client/signup/d$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/roblox/client/signup/c;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/d$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 60
    invoke-virtual {v11, v1}, Lcom/roblox/client/signup/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
