<?php

return [
    'name' => 'أسعار المنتجات',
    'warning_prices' => 'تمثل هذه الأسعار التكاليف الأصلية للمنتج وقد لا تعكس الأسعار النهائية، والتي قد تختلف بسبب عوامل مثل المبيعات السريعة والعروض الترويجية والمزيد.',
    'import' => [
        'name' => 'تحديث أسعار المنتجات',
        'description' => 'قم بتحديث أسعار المنتجات بشكل مجمّع عن طريق تحميل ملف CSV/Excel.',
        'done_message' => 'Updated :count product(s) successfully.',
        'rules' => [
            'id' => 'حقل المعرف إلزامي ويجب أن يكون موجودًا في جدول المنتجات.',
            'name' => 'حقل الاسم إلزامي ويجب أن يكون سلسلة.',
            'sku' => 'يجب أن يكون حقل SKU عبارة عن سلسلة.',
            'cost_per_item' => 'يجب أن يكون حقل التكلفة لكل عنصر قيمة رقمية.',
            'price' => 'حقل السعر مطلوب ويجب أن يكون قيمة رقمية.',
            'sale_price' => 'يجب أن يكون حقل سعر البيع قيمة رقمية.',
        ],
    ],
    'export' => [
        'description' => 'تصدير أسعار المنتجات إلى ملف CSV/Excel.',
    ],
];