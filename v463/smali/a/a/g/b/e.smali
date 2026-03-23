.class public La/a/g/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/a/c;
        a = "startLine"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "path"
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/g/d;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, La/a/g/d;->d:Ljava/lang/String;

    iput-object v0, p0, La/a/g/b/e;->b:Ljava/lang/String;

    .line 26
    iget-object p1, p1, La/a/g/d;->b:Ljava/lang/Integer;

    iput-object p1, p0, La/a/g/b/e;->a:Ljava/lang/Integer;

    return-void
.end method
