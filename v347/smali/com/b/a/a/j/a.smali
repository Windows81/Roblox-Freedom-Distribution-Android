.class public abstract Lcom/b/a/a/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/j/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/a/j/a$a;

.field private b:Landroid/content/Context;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/content/Context;Lcom/b/a/a/j/a$a;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/j/a;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/b/a/a/j/a;->a:Lcom/b/a/a/j/a$a;

    .line 24
    return-void
.end method

.method public abstract a(Lcom/b/a/a/j/b;Z)V
.end method

.method public abstract b(Lcom/b/a/a/j/b;)V
.end method
