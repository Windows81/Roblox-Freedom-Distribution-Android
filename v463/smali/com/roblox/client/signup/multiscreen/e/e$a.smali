.class public Lcom/roblox/client/signup/multiscreen/e/e$a;
.super Landroidx/lifecycle/v$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/multiscreen/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/roblox/client/signup/multiscreen/b/w;

.field private b:Lcom/roblox/client/signup/multiscreen/b/f;

.field private c:Lcom/roblox/client/signup/multiscreen/a/a;

.field private d:Lcom/roblox/client/s/f;

.field private e:Lcom/roblox/client/ad/b;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/b/w;Lcom/roblox/client/signup/multiscreen/b/f;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;Lcom/roblox/client/ad/b;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroidx/lifecycle/v$c;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    .line 181
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->b:Lcom/roblox/client/signup/multiscreen/b/f;

    .line 182
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->c:Lcom/roblox/client/signup/multiscreen/a/a;

    .line 183
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->d:Lcom/roblox/client/s/f;

    .line 184
    iput-object p5, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->e:Lcom/roblox/client/ad/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 191
    new-instance p1, Lcom/roblox/client/signup/multiscreen/e/e;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->b:Lcom/roblox/client/signup/multiscreen/b/f;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->c:Lcom/roblox/client/signup/multiscreen/a/a;

    iget-object v4, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->d:Lcom/roblox/client/s/f;

    iget-object v5, p0, Lcom/roblox/client/signup/multiscreen/e/e$a;->e:Lcom/roblox/client/ad/b;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/signup/multiscreen/e/e;-><init>(Lcom/roblox/client/signup/multiscreen/b/w;Lcom/roblox/client/signup/multiscreen/b/f;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;Lcom/roblox/client/ad/b;)V

    return-object p1
.end method
