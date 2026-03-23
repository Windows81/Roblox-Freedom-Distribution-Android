.class final Lcom/google/c/a/a$l;
.super Lcom/google/c/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# static fields
.field static final o:Lcom/google/c/a/a$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1514
    new-instance v0, Lcom/google/c/a/a$l;

    invoke-direct {v0}, Lcom/google/c/a/a$l;-><init>()V

    sput-object v0, Lcom/google/c/a/a$l;->o:Lcom/google/c/a/a$l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1512
    invoke-direct {p0}, Lcom/google/c/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1

    .prologue
    .line 1518
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1512
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/a;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1523
    const-string v0, "CharMatcher.javaUpperCase()"

    return-object v0
.end method
