.class Landroid/support/c/a/i$a;
.super Landroid/support/c/a/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1595
    invoke-direct {p0}, Landroid/support/c/a/i$d;-><init>()V

    .line 1597
    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$a;)V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Landroid/support/c/a/i$d;-><init>(Landroid/support/c/a/i$d;)V

    .line 1601
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 1

    .prologue
    .line 1619
    const/4 v0, 0x0

    .line 1620
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1621
    if-eqz v0, :cond_0

    .line 1622
    iput-object v0, p0, Landroid/support/c/a/i$a;->n:Ljava/lang/String;

    .line 1625
    :cond_0
    const/4 v0, 0x1

    .line 1626
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1627
    if-eqz v0, :cond_1

    .line 1628
    invoke-static {v0}, Landroid/support/v4/b/b;->b(Ljava/lang/String;)[Landroid/support/v4/b/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i$a;->m:[Landroid/support/v4/b/b$b;

    .line 1630
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1605
    const-string v0, "pathData"

    invoke-static {p4, v0}, Landroid/support/v4/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1606
    if-nez v0, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1609
    :cond_0
    sget-object v0, Landroid/support/c/a/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1611
    invoke-direct {p0, v0}, Landroid/support/c/a/i$a;->a(Landroid/content/res/TypedArray;)V

    .line 1612
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1634
    const/4 v0, 0x1

    return v0
.end method
