.class Lcom/b/a/a/i/a/e$1;
.super Landroid/support/v4/g/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/i/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/g/g",
        "<",
        "Ljava/lang/Long;",
        "Lcom/b/a/a/i/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/i/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/i/a/e;I)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/b/a/a/i/a/e$1;->a:Lcom/b/a/a/i/a/e;

    invoke-direct {p0, p2}, Landroid/support/v4/g/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(ZLjava/lang/Long;Lcom/b/a/a/i/a/d;Lcom/b/a/a/i/a/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p3}, Lcom/b/a/a/i/a/d;->a()V

    .line 32
    return-void
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lcom/b/a/a/i/a/d;

    check-cast p4, Lcom/b/a/a/i/a/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/a/i/a/e$1;->a(ZLjava/lang/Long;Lcom/b/a/a/i/a/d;Lcom/b/a/a/i/a/d;)V

    return-void
.end method
