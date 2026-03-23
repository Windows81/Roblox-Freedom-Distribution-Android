.class public Landroid/support/v4/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroid/support/v4/e/b$b;


# direct methods
.method public constructor <init>(I[Landroid/support/v4/e/b$b;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput p1, p0, Landroid/support/v4/e/b$a;->a:I

    .line 426
    iput-object p2, p0, Landroid/support/v4/e/b$a;->b:[Landroid/support/v4/e/b$b;

    .line 427
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Landroid/support/v4/e/b$a;->a:I

    return v0
.end method

.method public b()[Landroid/support/v4/e/b$b;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/v4/e/b$a;->b:[Landroid/support/v4/e/b$b;

    return-object v0
.end method
