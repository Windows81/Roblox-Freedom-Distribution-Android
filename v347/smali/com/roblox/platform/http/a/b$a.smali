.class Lcom/roblox/platform/http/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/platform/http/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/platform/http/a/b;

.field private b:Ld/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/roblox/platform/http/a/b;Ld/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/platform/http/a/b$a;-><init>(Lcom/roblox/platform/http/a/b;Ld/d;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/roblox/platform/http/a/b;Ld/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/roblox/platform/http/a/b$a;->b:Ld/d;

    .line 85
    iput-boolean p3, p0, Lcom/roblox/platform/http/a/b$a;->c:Z

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/roblox/platform/http/a/b$a;)Ld/d;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a;->b:Ld/d;

    return-object v0
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<TT;>;",
            "Ld/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p2}, Ld/l;->a()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p2}, Ld/l;->b()Lb/r;

    move-result-object v0

    const-string v1, "X-CSRF-TOKEN"

    invoke-virtual {v0, v1}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/platform/http/a/b$a;->c:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    iget-object v0, v0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->c()Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/a/b$a;

    iget-object v2, p0, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    iget-object v3, p0, Lcom/roblox/platform/http/a/b$a;->b:Ld/d;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/platform/http/a/b$a;-><init>(Lcom/roblox/platform/http/a/b;Ld/d;Z)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    iget-object v0, v0, Lcom/roblox/platform/http/a/b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/roblox/platform/http/a/b$a$1;

    invoke-direct {v1, p0, p2}, Lcom/roblox/platform/http/a/b$a$1;-><init>(Lcom/roblox/platform/http/a/b$a;Ld/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ld/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    iget-object v0, v0, Lcom/roblox/platform/http/a/b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/roblox/platform/http/a/b$a$2;

    invoke-direct {v1, p0, p2}, Lcom/roblox/platform/http/a/b$a$2;-><init>(Lcom/roblox/platform/http/a/b$a;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method
