.class public Landroid/support/v4/e/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    invoke-static {p1}, Landroid/support/v4/g/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/e/b$b;->a:Landroid/net/Uri;

    .line 345
    iput p2, p0, Landroid/support/v4/e/b$b;->b:I

    .line 346
    iput p3, p0, Landroid/support/v4/e/b$b;->c:I

    .line 347
    iput-boolean p4, p0, Landroid/support/v4/e/b$b;->d:Z

    .line 348
    iput p5, p0, Landroid/support/v4/e/b$b;->e:I

    .line 349
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v4/e/b$b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/support/v4/e/b$b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/support/v4/e/b$b;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Landroid/support/v4/e/b$b;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/support/v4/e/b$b;->e:I

    return v0
.end method
