.class public Lcom/roblox/client/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/AutoResizeTextView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/util/SparseIntArray;

.field private d:Landroid/text/TextPaint;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private final m:Lcom/roblox/client/AutoResizeTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->a:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->k:Z

    .line 234
    new-instance v0, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->m:Lcom/roblox/client/AutoResizeTextView$a;

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->a()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->a:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->k:Z

    .line 234
    new-instance v0, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->m:Lcom/roblox/client/AutoResizeTextView$a;

    .line 104
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->a()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->a:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->k:Z

    .line 234
    new-instance v0, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->m:Lcom/roblox/client/AutoResizeTextView$a;

    .line 109
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->a()V

    .line 110
    return-void
.end method

.method private a(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I
    .locals 3

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->k:Z

    if-nez v0, :cond_0

    .line 298
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/AutoResizeTextView;->b(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I

    move-result v0

    .line 308
    :goto_0
    return v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 302
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 303
    if-eqz v1, :cond_2

    move v0, v1

    .line 304
    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 306
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/AutoResizeTextView;->b(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    .line 308
    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->d:Landroid/text/TextPaint;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->d:Landroid/text/TextPaint;

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    .line 117
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->l:Z

    .line 122
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->l:Z

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    float-to-int v0, v0

    .line 222
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 223
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 224
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 225
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/roblox/client/AutoResizeTextView;->i:I

    .line 226
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    iget v3, p0, Lcom/roblox/client/AutoResizeTextView;->i:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 227
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 228
    const/4 v1, 0x0

    iget v2, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView;->m:Lcom/roblox/client/AutoResizeTextView$a;

    iget-object v4, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    .line 230
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/roblox/client/AutoResizeTextView;->a(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 228
    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private static b(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I
    .locals 5

    .prologue
    .line 313
    .line 315
    add-int/lit8 v0, p1, -0x1

    move v2, p0

    move v1, p0

    .line 317
    :goto_0
    if-gt v2, v0, :cond_2

    .line 318
    add-int v1, v2, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 319
    invoke-interface {p2, v1, p3}, Lcom/roblox/client/AutoResizeTextView$a;->a(ILandroid/graphics/RectF;)I

    move-result v3

    .line 320
    if-gez v3, :cond_0

    .line 322
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v4, v1

    move v1, v2

    move v2, v4

    .line 329
    goto :goto_0

    .line 323
    :cond_0
    if-lez v3, :cond_1

    .line 324
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    move v2, v0

    .line 325
    goto :goto_1

    :cond_1
    move v0, v1

    .line 332
    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/AutoResizeTextView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->i:I

    return v0
.end method

.method static synthetic d(Lcom/roblox/client/AutoResizeTextView;)F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    return v0
.end method

.method static synthetic e(Lcom/roblox/client/AutoResizeTextView;)F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    return v0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 348
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    .line 351
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 340
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    .line 341
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 199
    iput p2, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    .line 200
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    .line 201
    return-void
.end method

.method public setLines(I)V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 175
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 176
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    .line 177
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    .line 210
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    .line 211
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 158
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    .line 159
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    .line 170
    return-void

    .line 167
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 134
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    .line 135
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 190
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    .line 192
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 193
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    .line 194
    return-void

    .line 188
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method
