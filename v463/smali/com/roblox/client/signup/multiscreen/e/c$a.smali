.class public Lcom/roblox/client/signup/multiscreen/e/c$a;
.super Landroidx/lifecycle/v$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/multiscreen/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/roblox/client/signup/multiscreen/b/m;

.field private b:Lcom/roblox/client/signup/multiscreen/b/a;

.field private c:Lcom/roblox/client/signup/multiscreen/b/z;

.field private d:Lcom/roblox/client/signup/multiscreen/a/a;

.field private e:Lcom/roblox/client/s/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/b/m;Lcom/roblox/client/signup/multiscreen/b/a;Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Landroidx/lifecycle/v$c;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    .line 141
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    .line 142
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    .line 143
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->d:Lcom/roblox/client/signup/multiscreen/a/a;

    .line 144
    iput-object p5, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->e:Lcom/roblox/client/s/f;

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

    .line 151
    new-instance p1, Lcom/roblox/client/signup/multiscreen/e/c;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v4, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->d:Lcom/roblox/client/signup/multiscreen/a/a;

    iget-object v5, p0, Lcom/roblox/client/signup/multiscreen/e/c$a;->e:Lcom/roblox/client/s/f;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/signup/multiscreen/e/c;-><init>(Lcom/roblox/client/signup/multiscreen/b/m;Lcom/roblox/client/signup/multiscreen/b/a;Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;)V

    return-object p1
.end method
