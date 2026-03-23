.class final Lcom/google/c/a/a$h;
.super Lcom/google/c/a/a$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# static fields
.field static final o:Lcom/google/c/a/a$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1546
    new-instance v0, Lcom/google/c/a/a$h;

    invoke-direct {v0}, Lcom/google/c/a/a$h;-><init>()V

    sput-object v0, Lcom/google/c/a/a$h;->o:Lcom/google/c/a/a$h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1549
    const-string v0, "CharMatcher.javaIsoControl()"

    invoke-direct {p0, v0}, Lcom/google/c/a/a$m;-><init>(Ljava/lang/String;)V

    .line 1550
    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1

    .prologue
    .line 1554
    const/16 v0, 0x1f

    if-le p1, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
