function out = PSNR(im,compressed_im) 
    im = double(im);
    [h,w] = size(im);
    compressed_im = double(compressed_im);

    B = 8;                %����һ�������ö��ٶ�����λ
    MAX = 2^B-1;          %ͼ���ж��ٻҶȼ�
    MES = sum(sum((im-compressed_im) .^ 2)) / (h * w);     %������
    out = 20*log10(MAX/sqrt(MES));           %��ֵ�����
end