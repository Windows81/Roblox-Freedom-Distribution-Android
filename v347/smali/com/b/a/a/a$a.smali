.class Lcom/b/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/b/a/a/j/b;


# direct methods
.method public constructor <init>(JLcom/b/a/a/j/b;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Lcom/b/a/a/a$a;->a:J

    .line 120
    iput-object p3, p0, Lcom/b/a/a/a$a;->b:Lcom/b/a/a/j/b;

    .line 121
    return-void
.end method
