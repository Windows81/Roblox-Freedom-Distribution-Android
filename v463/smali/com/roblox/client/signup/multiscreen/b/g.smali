.class public Lcom/roblox/client/signup/multiscreen/b/g;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/roblox/client/signup/multiscreen/a/c;",
        ">;",
        "Lcom/roblox/client/signup/multiscreen/b/f;"
    }
.end annotation


# instance fields
.field private e:Lcom/roblox/client/signup/multiscreen/b/d;

.field private f:Lcom/roblox/client/signup/multiscreen/b/c;

.field private g:Lcom/roblox/client/signup/multiscreen/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/e;Lcom/roblox/client/signup/multiscreen/b/c;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/g;->e:Lcom/roblox/client/signup/multiscreen/b/d;

    .line 25
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/g;->f:Lcom/roblox/client/signup/multiscreen/b/c;

    .line 26
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/g;->g:Lcom/roblox/client/signup/multiscreen/c;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/b/c;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/g;->f:Lcom/roblox/client/signup/multiscreen/b/c;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/roblox/client/signup/multiscreen/b/f$a;)I
    .locals 2

    .line 84
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/g$2;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/b/f$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/c;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/g;->g:Lcom/roblox/client/signup/multiscreen/c;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Lcom/roblox/client/signup/multiscreen/b/f$a;)Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/g$2;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/b/f$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "female"

    goto :goto_0

    :cond_1
    const-string p1, "male"

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/c;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public a(Lcom/roblox/client/signup/multiscreen/b/f$a;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/signup/multiscreen/b/f$a;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/c;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/f$a;->a:Lcom/roblox/client/signup/multiscreen/b/f$a;

    if-eq p1, v0, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/g;->b(Lcom/roblox/client/signup/multiscreen/b/f$a;)I

    move-result v0

    .line 38
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/g;->c(Lcom/roblox/client/signup/multiscreen/b/f$a;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g;->f:Lcom/roblox/client/signup/multiscreen/b/c;

    const-string v2, "Android-VAppSignup-ChangeGenderAttempt"

    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/multiscreen/b/c;->a(Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/g$1;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/signup/multiscreen/b/g$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/g;I)V

    .line 77
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/g;->e:Lcom/roblox/client/signup/multiscreen/b/d;

    new-instance v2, Lcom/roblox/platform/http/postbody/webinterface/UpdateGenderPostBody;

    invoke-direct {v2, p1}, Lcom/roblox/platform/http/postbody/webinterface/UpdateGenderPostBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/d;->a(Lcom/roblox/platform/http/postbody/webinterface/UpdateGenderPostBody;)Le/b;

    move-result-object p1

    invoke-interface {p1, v1}, Le/b;->a(Le/d;)V

    :cond_0
    return-object p0
.end method
