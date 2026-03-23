.class public Lcom/roblox/platform/http/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/http/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ld/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ld/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/roblox/platform/http/a/b;->a:Ljava/util/concurrent/Executor;

    .line 28
    iput-object p2, p0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ld/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ld/l;->a()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ld/l;->b()Lb/r;

    move-result-object v1

    const-string v2, "X-CSRF-TOKEN"

    invoke-virtual {v1, v2}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->c()Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    new-instance v1, Lcom/roblox/platform/http/a/b$a;

    invoke-direct {v1, p0, p1}, Lcom/roblox/platform/http/a/b$a;-><init>(Lcom/roblox/platform/http/a/b;Ld/d;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 36
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->b()Z

    move-result v0

    return v0
.end method

.method public c()Ld/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/roblox/platform/http/a/b;

    iget-object v1, p0, Lcom/roblox/platform/http/a/b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    invoke-interface {v2}, Ld/b;->c()Ld/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/a/b;-><init>(Ljava/util/concurrent/Executor;Ld/b;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/roblox/platform/http/a/b;->c()Ld/b;

    move-result-object v0

    return-object v0
.end method
