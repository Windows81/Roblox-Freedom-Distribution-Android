.class public Lcom/b/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/p;


# instance fields
.field a:Lcom/b/a/a/i/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/b/a/a/i/a/c$b;

    invoke-direct {v0}, Lcom/b/a/a/i/a/c$b;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/i/a/c$c;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/c/a;J)Lcom/b/a/a/m;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/b/a/a/a/a;

    new-instance v1, Lcom/b/a/a/i/a/c;

    iget-object v2, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/i/a/c$c;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/b/a/a/i/a/c;-><init>(Lcom/b/a/a/c/a;JLcom/b/a/a/i/a/c$c;)V

    invoke-direct {v0, v1}, Lcom/b/a/a/a/a;-><init>(Lcom/b/a/a/m;)V

    return-object v0
.end method

.method public b(Lcom/b/a/a/c/a;J)Lcom/b/a/a/m;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/b/a/a/a/a;

    new-instance v1, Lcom/b/a/a/e/a;

    invoke-direct {v1, p1, p2, p3}, Lcom/b/a/a/e/a;-><init>(Lcom/b/a/a/c/a;J)V

    invoke-direct {v0, v1}, Lcom/b/a/a/a/a;-><init>(Lcom/b/a/a/m;)V

    return-object v0
.end method
