.class public Lcom/b/a/a/i/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/i/a/b$b$a;
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/a/i/a/b$c;

.field final b:Lcom/b/a/a/i/a/b$b$a;


# direct methods
.method public constructor <init>(Lcom/b/a/a/i/a/b$c;Lcom/b/a/a/i/a/b$b$a;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/b/a/a/i/a/b$b;->a:Lcom/b/a/a/i/a/b$c;

    .line 273
    iput-object p2, p0, Lcom/b/a/a/i/a/b$b;->b:Lcom/b/a/a/i/a/b$b$a;

    .line 274
    return-void
.end method
