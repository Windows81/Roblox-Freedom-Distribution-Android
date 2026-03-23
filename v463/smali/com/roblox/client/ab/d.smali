.class public Lcom/roblox/client/ab/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ab/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/ab/d$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/ab/d$a;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/roblox/client/ab/d;->a:Lcom/roblox/client/ab/d$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ab/d;)Lcom/roblox/client/ab/d$a;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/roblox/client/ab/d;->a:Lcom/roblox/client/ab/d$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/j;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->n()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/roblox/client/ab/d$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/ab/d$1;-><init>(Lcom/roblox/client/ab/d;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    return-void
.end method
