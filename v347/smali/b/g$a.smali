.class public final Lb/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lb/g;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    new-instance v0, Lb/g;

    iget-object v1, p0, Lb/g$a;->a:Ljava/util/List;

    invoke-static {v1}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lb/g;-><init>(Ljava/util/List;Lb/a/g/b;Lb/g$1;)V

    return-object v0
.end method
