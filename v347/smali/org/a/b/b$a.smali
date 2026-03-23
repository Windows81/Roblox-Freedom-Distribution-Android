.class Lorg/a/b/b$a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/a/b/b;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/a/b/b;I)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lorg/a/b/b$a;->a:Lorg/a/b/b;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 42
    iput p2, p0, Lorg/a/b/b$a;->b:I

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/a/b/b$a;->b:I

    return v0
.end method
